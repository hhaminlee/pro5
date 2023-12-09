package com.example.teacherInfo;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

@Service
public class FileUploadService {

    public String uploadFile(MultipartFile file, String uploadDirectory) throws IOException {
        // 파일을 저장할 경로 설정
        String projectPath = System.getProperty("user.dir") + uploadDirectory;

        // 파일 이름을 UUID로 설정하여 중복을 피함
        UUID uuid = UUID.randomUUID();
        String fileName = uuid + "_" + file.getOriginalFilename();

        // 실제 파일 저장 경로 생성
        File saveFile = new File(projectPath, fileName);

        // 파일을 실제 디스크에 저장
        file.transferTo(saveFile);

        // 파일 경로 반환
        return fileName;
    }
}

