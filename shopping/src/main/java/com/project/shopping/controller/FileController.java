/**
 * 
 */
package com.project.shopping.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.project.shopping.util.AppFileUtils;

import cn.hutool.core.date.DateUtil;

/**
 * @program: Bidding
 * @description:
 * @author: Administrator
 * @create: 2020-03-27 16:36
 */
@RestController
@RequestMapping("file")
public class FileController {


    /**
     * 文件上传
     */
    @RequestMapping("uploadFile1")
    public Map<String,Object> uploadFile1(MultipartFile mf) {
        //1,得到文件名
        String oldName = mf.getOriginalFilename();
        //2,根据文件名生成新的文件名
        String newName=AppFileUtils.createNewFileName(oldName);
        //3,得到当前日期的字符串
        String dirName=DateUtil.format(new Date(), "yyyy-MM-dd");
        //4,构造文件夹
        File dirFile=new File(AppFileUtils.UPLOAD_PATH,dirName);
        //5,判断当前文件夹是否存在
        if(!dirFile.exists()) {
            dirFile.mkdirs();//创建文件夹
        }
        //6,构造文件对象
        File file=new File(dirFile, newName+"_temp");
        //7,把mf里面的图片信息写入file
        try {
            mf.transferTo(file);
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("path", dirName+"/"+newName);
        return map;
    }

    /**
     * 文件上传
     */
    @RequestMapping("uploadFile")
    public Map<String,Object> uploadFile(MultipartFile mf) {
        //1,得到文件名
        String oldName = mf.getOriginalFilename();
        //2,根据文件名生成新的文件名
        String newName=AppFileUtils.createNewFileName(oldName);
        //3,得到当前日期的字符串
        String dirName=DateUtil.format(new Date(), "yyyy-MM-dd");
        //4,构造文件夹
        File dirFile=new File(AppFileUtils.UPLOAD_PATH,dirName);
        //5,判断当前文件夹是否存在
        if(!dirFile.exists()) {
            dirFile.mkdirs();//创建文件夹
        }
        //6,构造文件对象
        File file=new File(dirFile, newName+"_temp");
        //7,把mf里面的图片信息写入file
        try {
            mf.transferTo(file);
        } catch (IllegalStateException | IOException e) {
            e.printStackTrace();
        }
        Map<String,Object> map=new HashMap<String, Object>();
        map.put("path", dirName+"/"+newName+"_temp");
        return map;
    }


    //实现Spring Boot 的文件下载功能，映射网址为/download
    @RequestMapping("/download")
    @ResponseBody
    public String downloadFile(HttpServletRequest request,
                               HttpServletResponse response,
                               String FilePath) throws UnsupportedEncodingException {

        int x = FilePath.lastIndexOf("//");

        AppFileUtils.createResponseEntity(FilePath);

        String fileName = FilePath.substring(x+2,FilePath.length());
        String downloadFilePath = FilePath.substring(0,x+2);//被下载的文件在服务器中的路径,
        if (fileName != null) {
            //设置文件路径
            File file = new File(AppFileUtils.UPLOAD_PATH, FilePath.substring(0,FilePath.length()-1));

            // 如果文件名存在，则进行下载
            if (file.exists()) {

                // 配置文件下载
                response.setHeader("content-type", "application/octet-stream");
                response.setContentType("application/octet-stream");
                // 下载文件能正常显示中文
                response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(FilePath.substring(0,FilePath.length()-1), "UTF-8"));

                // 实现文件下载
                byte[] buffer = new byte[1024];
                FileInputStream fis = null;
                BufferedInputStream bis = null;
                try {
                    fis = new FileInputStream(file);
                    bis = new BufferedInputStream(fis);
                    OutputStream os = response.getOutputStream();
                    int i = bis.read(buffer);
                    while (i != -1) {
                        os.write(buffer, 0, i);
                        i = bis.read(buffer);
                    }
                    System.out.println("Download the song successfully!");
                }
                catch (Exception e) {
                    System.out.println("Download the song failed!");
                }
                finally {
                    if (bis != null) {
                        try {
                            bis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return "SUCCESS";
    }

    /**
     * 图片下载
     */
    @RequestMapping("showImageByPath")
    public ResponseEntity<Object> showImageByPath(String path){
        return AppFileUtils.createResponseEntity(path);
    }

}

