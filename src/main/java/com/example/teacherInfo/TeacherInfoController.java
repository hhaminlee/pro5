package com.example.teacherInfo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@Controller
@RequestMapping(value = "/teacherInfo")
public class TeacherInfoController {
    @Autowired
    TeacherInfoService teacherInfoService;

//    @Autowired
//    FileUploadService fileUploadService;
//
//    @Value("${file.upload.directory}")
//    String uploadDirectory;



    @RequestMapping("/list")
    public String teacherList(Model model) {
        model.addAttribute("list", teacherInfoService.getInfoList());
        return "teacherlist";
    }

    @RequestMapping("/add")
    public String addTeacher() {
        return "addpostform";
    }

    @RequestMapping("/addok")
    public String addTeacherOK(TeacherVO vo) {
        if (teacherInfoService.insertInfo(vo) == 0)
            System.out.println("데이터 추가 실패!");
        else
            System.out.println("데이터 추가 성공!!");

        return "redirect:list";
    }
//    @RequestMapping(value = "/addok", method = RequestMethod.POST)
//    public String addTeacherOK(@ModelAttribute("u") TeacherVO vo,
//                               @RequestParam("photoFile") MultipartFile file) throws IOException {
//        if (!file.isEmpty()) {
//            // 파일 업로드 및 경로 설정
//            String filePath = fileUploadService.uploadFile(file, uploadDirectory);
//            vo.setPhoto(filePath);
//        }
//
//        int result = teacherInfoService.insertInfo(vo);
//        if (result == 0)
//            System.out.println("데이터 추가 실패!");
//        else
//            System.out.println("데이터 추가 성공!!");
//
//        return "redirect:list";
//    }

    @RequestMapping("/editform/{seq}")
    public String editTeacher(@PathVariable("seq") int seq, Model model) {
        TeacherVO teacherVO = teacherInfoService.getInfo(seq);
        model.addAttribute("u", teacherVO);
        return "editform";
    }

    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editTeacherOK(TeacherVO vo) {
        if (teacherInfoService.updateInfo(vo) == 0)
            System.out.println("데이터 수정 실패!");
        else
            System.out.println("데이터 수정 성공!!");

        return "redirect:list";
    }

    @RequestMapping("/deleteok/{seq}")
    public String deleteTeacherOK(@PathVariable("seq") int seq) {
        if (teacherInfoService.deleteInfo(seq) == 0)
            System.out.println("데이터 삭제 실패!");
        else
            System.out.println("데이터 삭제 성공!!");
        return "redirect:../list";
    }

    @RequestMapping("/view/{seq}")
    public String viewTeacher(@PathVariable("seq") int seq, Model model) {
        TeacherVO teacherVO = teacherInfoService.getInfo(seq);
        model.addAttribute("teacherVO", teacherVO);
        return "view";
    }
}
