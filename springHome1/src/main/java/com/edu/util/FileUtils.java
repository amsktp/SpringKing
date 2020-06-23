package com.edu.util;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Component("fileUtils")
public class FileUtils {

	private static final String FILE_PATH = "D:\\upload";
	
	public List<Map<String, Object>> parseInsertFileInfo (int parentSeq,
			MultipartHttpServletRequest multipartHttpServletRequest) throws IllegalStateException, IOException	{
		
		Iterator<String> iterator = multipartHttpServletRequest.getFileNames();
		
		MultipartFile multipartFile = null;
		String originalFileName = null;
		String originalFileExtension  = null;
		String storedFileName = null;
		
		List<Map<String, Object>> fileList =
				new ArrayList<Map<String,Object>>();
		Map<String,Object> fileInfoMap = null;
		
		File file = new File(FILE_PATH);
		
		if (file.exists() == false) { //만약 해당 파일이 없다면
			file.mkdirs();				//그 파일을 만들어라
		}
		
		while(iterator.hasNext()) {
			multipartFile = multipartHttpServletRequest.getFile(iterator.next());	//넘겨받은 파일 하나를 가져온다

			if(multipartFile.isEmpty() == false) {
				originalFileName = multipartFile.getOriginalFilename(); //오리지날 파일 네임을 가져온다
				
				
				originalFileExtension = originalFileName.substring(originalFileName.lastIndexOf("."));	//확장자만 가져오기
				storedFileName = CommonUtils.getRandomString() + originalFileExtension;	//랜덤 이름을 붙이고 확장자만 붙여준다
				
				file = new File(FILE_PATH, storedFileName);		//첫번째 인자값의 경로에 두번째 인자값의 파일이름을 설정한다
				multipartFile.transferTo(file);	//설정한 파일을 만든다
			
//				System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+ originalFileName);
//				System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+ storedFileName);
//				System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"+ multipartFile.getSize());

				fileInfoMap = new HashMap<String, Object>();
				fileInfoMap.put("parent_seq", parentSeq);
				fileInfoMap.put("original_file_name", originalFileName);	//매핑해준다
				fileInfoMap.put("stored_file_name", storedFileName);
				fileInfoMap.put("file_size", multipartFile.getSize());
				
				fileList.add(fileInfoMap);
				
			}
		}//while end

		return fileList;
	}

	public void parseUpdateFileInfo(Map<String, Object> tempFileMap) throws Exception{
		// TODO Auto-generated method stub
		
		String storeFileName = (String)tempFileMap.get("STORED_FILE_NAME`");
		
		File file = new File(FILE_PATH + "/" + storeFileName);
		
		if(file.exists()) {
			file.delete();
		}else {
			System.out.println("파일이 존재하지 않습니다.");
			throw new Exception();
		}
		
		
	}
}
