/*
 * package com.myspring.tibet.admin.product.controller;
 * 
 * import java.io.File; import java.util.Enumeration; import java.util.HashMap;
 * import java.util.List; import java.util.Map;
 * 
 * import javax.servlet.http.HttpServletResponse; import
 * javax.servlet.http.HttpSession;
 * 
 * import org.apache.commons.io.FileUtils; import
 * org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.http.HttpHeaders; import
 * org.springframework.http.HttpStatus; import
 * org.springframework.http.ResponseEntity; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.multipart.MultipartHttpServletRequest;
 * 
 * import com.myspring.tibet.member.vo.MemberVO; import
 * com.myspring.tibet.product.service.ProductService;
 * 
 * 
 * 
 * 
 * @Controller("productController") public class ProductControllerImpl {
 * 
 * @Autowired private ProductService productService;
 * 
 * @RequestMapping(value="/addNewProduct.do", method=RequestMethod.POST) public
 * ResponseEntity addNewProduct(MultipartHttpServletRequest multipartRequest,
 * HttpServletResponse response) throws Exception {
 * multipartRequest.setCharacterEncoding("utf-8");
 * response.setContentType("text/html; charset=utf-8"); String
 * imageFileName=null; Map<String,Object> newProductMap=new HashMap();
 * 
 * Enumeration enu=multipartRequest.getParameterNames();
 * while(enu.hasMoreElements()) { String name=(String)enu.nextElement(); String
 * value=multipartRequest.getParameter(name); newProductMap.put(name, value); }
 * 
 * HttpSession session=multipartRequest.getSession(); MemberVO
 * memberVO=(MemberVO)session.getAttribute("memberInfo"); String
 * register=memberVO.getUser_id();
 * 
 * List<ImageFileVO> imageFileList=upload(multipartRequest); if(imageFileList
 * !=null && imageFileList.size() !=0) { //null check for(ImageFileVO
 * imageFileVO : imageFileList) { imageFileVO.setPro_register(register); }
 * newProductMap.put("imageFileList", imageFileList); } String message=null;
 * ResponseEntity resEntity=null; HttpHeaders responseHeaders=new HttpHeaders();
 * responseHeaders.add("Content-Type", "text/html; charset=utf-8");
 * 
 * try { int pro_code=adminProductService.addNewProduct(newProductMap);
 * if(imageFileList !=null && imageFileList.size() !=0) { for(ImageFileVO
 * imageFileVO : imageFileList) {
 * imageFileName=imageFileVO.getPro_imageFileName(); File srcFile=new
 * File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+imageFileName); File destDir=new
 * File(CURR_IMAGE_REPO_PATH+"\\"+pro_code);
 * FileUtils.moveFileToDirectory(srcFile, destDir, true); } }
 * message="<script> "; message+=" alert('새상품이 등록외었습니다.');";
 * message+=" location.href='"+multipartRequest.getContextPath()+
 * "/admin/product/addNewProductForm.do';"; message+=" </script>";
 * 
 * }catch(Exception e) { e.printStackTrace(); if(imageFileList !=null &&
 * imageFileList.size() !=0) { for(ImageFileVO imageFileVO : imageFileList) {
 * imageFileName=imageFileVO.getPro_imageFileName(); File srcFile=new
 * File(CURR_IMAGE_REPO_PATH+"\\"+"temp"+"\\"+imageFileName); srcFile.delete();
 * } } message="<script> "; message+=" alert('새상품 들록 실패');";
 * message+=" location.href='"+multipartRequest.getContextPath()+
 * "/admin/product/addNewProductForm.do';"; message+=" </script>"; }
 * resEntity=new ResponseEntity(message,responseHeaders,HttpStatus.OK);
 * 
 * return resEntity; } }
 * 
 */