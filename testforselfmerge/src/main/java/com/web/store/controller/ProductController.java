package com.web.store.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.rowset.serial.SerialBlob;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.CacheControl;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.web.store.exception.ProductNotFoundException;
import com.web.store.model.ProductBean;
import com.web.store.model.ShopmemberBean;
import com.web.store.service.ProductBeanService;
import com.web.store.service.UserService;

@Controller
public class ProductController {
	@Autowired
	ProductBeanService service;
	@Autowired
	UserService userService;
	@Autowired
	ServletContext context;

	@RequestMapping("/products")
	public String list(Model model) {
		List<ProductBean> list = service.getAllProducts();

		model.addAttribute("products", list);

		model.addAttribute("products", list);

		return "products";
	}

	@RequestMapping("/products1")
	public String productlist(Model model) {

		List<ProductBean> list = service.getAllProducts();
		if (list.size() < 8) {
			model.addAttribute("products", list);

		} else {
			int beginpage = 10;
			int total = 19;
			int page = 1;

			list = list.subList(beginpage * page, total * page);

			model.addAttribute("products", list);
		}
		return "products";
	}

	@RequestMapping("/productsall")
	public String allproduct(Model model) {
		List<ProductBean> list = service.getAllProducts();

		model.addAttribute("products", list);

		return "products";
	}

	@RequestMapping("/backproducts")
	public String list2(Model model, HttpSession session) {

//		Object name = session.getAttribute("memberbean");
//		ShopmemberBean info1=userService.findByAccount(name.toString());
		ShopmemberBean info1 = (ShopmemberBean) session.getAttribute("memberbean");
		System.out.println("info1 addproducts" + info1);
		List<ProductBean> list = service.getProductByCompanyid(info1.getSeqNo());

		model.addAttribute("member", info1);
		model.addAttribute("products", list);

		return "backproducts";
	}

	@RequestMapping("/update/stock")
	public String updateStock(Model model) {
		service.updateAllStocks();
		return "redirect:/products";
	}

	@RequestMapping("/queryByCategory")
	public String getCategoryList(Model model) {
		List<String> list = service.getAllCategories();
		model.addAttribute("categoryList", list);
		return "category";
	}

	@RequestMapping("/{category}")
	public String getProductsByCategory(@PathVariable("category") String category, Model model) {
		List<ProductBean> products = service.getProductsByCategory(category);
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getApple")
	public String getProductsByCategory(Model model) {
		List<ProductBean> products = service.getProductsByCategory("Apple");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getAsus")
	public String getProductsByCategory1(Model model) {
		List<ProductBean> products = service.getProductsByCategory("Asus");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getSamsung")
	public String getProductsByCategory2(Model model) {
		List<ProductBean> products = service.getProductsByCategory("Samsung");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getLG")
	public String getProductsByCategory3(Model model) {
		List<ProductBean> products = service.getProductsByCategory("LG");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getmi")
	public String getProductsByCategory4(Model model) {
		List<ProductBean> products = service.getProductsByCategory("mi");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getSharp")
	public String getProductsByCategory5(Model model) {
		List<ProductBean> products = service.getProductsByCategory("SHARP");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getOppo")
	public String getProductsByCategory6(Model model) {
		List<ProductBean> products = service.getProductsByCategory("Oppo");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getHTC")
	public String getProductsByCategory7(Model model) {
		List<ProductBean> products = service.getProductsByCategory("HTC");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getSUGAR")
	public String getProductsByCategory8(Model model) {
		List<ProductBean> products = service.getProductsByCategory("SUGAR");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getother")
	public String getProductsByCategory9(Model model) {
		List<ProductBean> products = service.getProductsByCategory("other");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping("/getVIVO")
	public String getProductsByCategory10(Model model) {
		List<ProductBean> products = service.getProductsByCategory("VIVO");
		model.addAttribute("products", products);
		return "products";
	}
	@RequestMapping("/getHuawei")
	public String getProductsByCategory11(Model model) {
		List<ProductBean> products = service.getProductsByCategory("Huawei");
		model.addAttribute("products", products);
		return "products";
	}

	@RequestMapping(value = "/updateProduct", method = RequestMethod.GET)
	public String updateproduct(@ModelAttribute("id") Integer id, Model model) {
		ProductBean bb = service.getProductById(id);
		System.out.println(bb);
		System.out.println(bb);
		System.out.println(bb);
		System.out.println(bb);
		System.out.println(bb);
		System.out.println(bb);
		System.out.println(bb);
		System.out.println(bb);
		bb.setProductId(id);
		model.addAttribute("productBean", bb);

		return "updateProduct";

	}

	@RequestMapping(value = "/updateProduct", method = RequestMethod.POST)
	public String productupdate(@ModelAttribute("id") Integer id, @ModelAttribute("productBean") ProductBean product,
			BindingResult result, HttpServletRequest request, HttpSession session) {

		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}

		product.setProductId(id);
		ShopmemberBean info1 = (ShopmemberBean) session.getAttribute("memberbean");

		product.setCompanyId(info1.getSeqNo());

		MultipartFile productImage = product.getProductImage();
		String originalFilename = productImage.getOriginalFilename();
		product.setFileName(originalFilename);

		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = context.getRealPath("/");
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty()) {
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				product.setCoverImage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		MultipartFile productImage2 = product.getProductImage2();
		String originalFilename1 = productImage2.getOriginalFilename();
		product.setFileName2(originalFilename1);

		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage2 != null && !productImage2.isEmpty()) {
			try {
				byte[] b = productImage2.getBytes();
				Blob blob = new SerialBlob(b);
				product.setImage2(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		MultipartFile productImage3 = product.getProductImage3();
		String originalFilename2 = productImage3.getOriginalFilename();
		product.setFileName3(originalFilename2);

		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage3 != null && !productImage3.isEmpty()) {
			try {
				byte[] b = productImage3.getBytes();
				Blob blob = new SerialBlob(b);
				product.setImage3(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		MultipartFile productImage4 = product.getProductImage4();
		String originalFilename3 = productImage4.getOriginalFilename();
		product.setFileName4(originalFilename3);

		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage4 != null && !productImage4.isEmpty()) {
			try {
				byte[] b = productImage4.getBytes();
				Blob blob = new SerialBlob(b);
				product.setImage4(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}
		MultipartFile productImage5 = product.getProductImage5();
		String originalFilename4 = productImage5.getOriginalFilename();
		product.setFileName5(originalFilename4);

		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage5 != null && !productImage5.isEmpty()) {
			try {
				byte[] b = productImage5.getBytes();
				Blob blob = new SerialBlob(b);
				product.setImage5(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		service.update(product);

		return "redirect:/backproducts";
	}

	@RequestMapping(value = "/backaddProduct", method = RequestMethod.GET)
	public String getAddNewProductForm(Model model) {
		ProductBean bb = new ProductBean();

		model.addAttribute("productBean", bb);
		return "backaddProduct";

	}

	@RequestMapping(value = "/backaddProduct", method = RequestMethod.POST)
	public String processAddNewProductForm(HttpSession session, @ModelAttribute("productBean") ProductBean bb,
			BindingResult result, HttpServletRequest request) {
		String[] suppressedFields = result.getSuppressedFields();
		if (suppressedFields.length > 0) {
			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
		}
		if (bb.getStock() == null) {
			bb.setStock(0);
		}

		ShopmemberBean info1 = (ShopmemberBean) session.getAttribute("memberbean");
		bb.setCompanyId(info1.getSeqNo());

		MultipartFile productImage = bb.getProductImage();
		String originalFilename = productImage.getOriginalFilename();
		bb.setFileName(originalFilename);

		String ext = originalFilename.substring(originalFilename.lastIndexOf("."));
		String rootDirectory = context.getRealPath("/");
		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage != null && !productImage.isEmpty()) {
			try {
				byte[] b = productImage.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setCoverImage(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		MultipartFile productImage2 = bb.getProductImage2();
		String originalFilename2 = productImage2.getOriginalFilename();// 抓檔名
		bb.setFileName2(originalFilename2);// 抓檔名

		String ext2 = originalFilename2.substring(originalFilename2.lastIndexOf("."));
		String rootDirectory2 = context.getRealPath("/");

		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage2 != null && !productImage2.isEmpty()) {
			try {
				byte[] b = productImage2.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setImage2(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		MultipartFile productImage3 = bb.getProductImage3();
		String originalFilename3 = productImage3.getOriginalFilename();// 抓檔名
		bb.setFileName3(originalFilename3);// 抓檔名

		String ext3 = originalFilename3.substring(originalFilename3.lastIndexOf("."));
		String rootDirectory3 = context.getRealPath("/");

		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage3 != null && !productImage3.isEmpty()) {
			try {
				byte[] b = productImage3.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setImage3(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		MultipartFile productImage4 = bb.getProductImage4();
		String originalFilename4 = productImage4.getOriginalFilename();// 抓檔名
		bb.setFileName4(originalFilename4);// 抓檔名

		String ext4 = originalFilename4.substring(originalFilename4.lastIndexOf("."));
		String rootDirectory4 = context.getRealPath("/");

		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage4 != null && !productImage4.isEmpty()) {
			try {
				byte[] b = productImage4.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setImage4(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		MultipartFile productImage5 = bb.getProductImage5();
		String originalFilename5 = productImage5.getOriginalFilename();// 抓檔名
		bb.setFileName5(originalFilename5);// 抓檔名

		String ext5 = originalFilename5.substring(originalFilename5.lastIndexOf("."));
		String rootDirectory5 = context.getRealPath("/");

		// 建立Blob物件，交由 Hibernate 寫入資料庫
		if (productImage5 != null && !productImage5.isEmpty()) {
			try {
				byte[] b = productImage5.getBytes();
				Blob blob = new SerialBlob(b);
				bb.setImage5(blob);
			} catch (Exception e) {
				e.printStackTrace();
				throw new RuntimeException("檔案上傳發生異常: " + e.getMessage());
			}
		}

		service.addProduct(bb);

		System.out.println("----------------------------------------------------------------");
		System.out.println(bb);
		System.out.println("----------------------------------------------------------------");
		return "redirect:/backproducts";
	}

	@ModelAttribute("categoryList")
	public List<String> getCategoryList() {

		return service.getAllCategories();
	}

	@InitBinder
	public void whiteListing(WebDataBinder binder) {
		binder.setAllowedFields("author", "ProductNo", "category", "price", "title", "companyId", "productImage", "CPU",
				"system", "rom", "ram", "screensize", "screenpixel", "releasedate", "modelid", "brand", "weight",
				"color", "stock", "productNo", "id", "productBean", "pddetail", "product", "cellBean", "PdImage1",
				"productImage2", "productImage3", "productImage4", "productImage5");
	}

	@RequestMapping(value = "/getPicture/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getCoverImage();
			filename = bean.getFileName();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	@RequestMapping(value = "/getimage1/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getimage1(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage2();
			filename = bean.getFileName2();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	private byte[] toByteArray(String filepath) {
		byte[] b = null;
		try {
			File file = new File(filepath);
			long size = file.length();
			b = new byte[(int) size];
			InputStream fis = context.getResourceAsStream(filepath);
			fis.read(b);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return b;
	}

	@RequestMapping(value = "/getPicture2/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture2(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage2();
			filename = bean.getFileName2();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	@RequestMapping(value = "/getPicture3/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture3(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage3();
			filename = bean.getFileName3();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	@RequestMapping(value = "/getPicture4/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture4(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage4();
			filename = bean.getFileName4();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	@RequestMapping(value = "/getPicture5/{productId}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> getPicture5(HttpServletResponse resp, @PathVariable Integer productId) {
		String filePath = "/resources/images/NoImage.jpg";
		byte[] media = null;
		HttpHeaders headers = new HttpHeaders();
		String filename = "";
		int len = 0;
		ProductBean bean = service.getProductById(productId);
		if (bean != null) {
			Blob blob = bean.getImage5();
			filename = bean.getFileName5();
			if (blob != null) {
				try {
					len = (int) blob.length();
					media = blob.getBytes(1, len); // blob.getBytes(1, len): 是 1 開頭。Jdbc相關的類別都是1 開頭。
				} catch (SQLException e) {
					throw new RuntimeException("ProductController的getPicture()發生SQLException: " + e.getMessage());
				}
			} else {
				media = toByteArray(filePath);
				filename = filePath;
			}
		} else {
			media = toByteArray(filePath);
			filename = filePath;
		}
		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
		String mimeType = context.getMimeType(filename);
		MediaType mediaType = MediaType.valueOf(mimeType);
		System.out.println("mediaType =" + mediaType);
		headers.setContentType(mediaType);
		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
		return responseEntity;
	}

	@ExceptionHandler({ ProductNotFoundException.class })
	public ModelAndView handleError(HttpServletRequest request, ProductNotFoundException exception) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("invalidProductId", exception.getProductId());
		mv.addObject("exception", exception);
		mv.addObject("url", request.getRequestURL() + "?" + request.getQueryString());
		mv.setViewName("productNotFound");
		return mv;
	}

	@RequestMapping("/product")
	public String productdetailpage(@RequestParam("id") Integer id, Model model) {

//		CellBean bb = service1.getProductById(id);
//		System.out.println(bb);
//		model.addAttribute("image", service3.getProductById(id));
		model.addAttribute("product", service.getProductById(id));
//		model.addAttribute("cellphone", bb);
		return "product";
	}

	@RequestMapping("/backproduct")
	public String productdetailpage1(@RequestParam("id") Integer id, Model model) {

		model.addAttribute("product", service.getProductById(id));
		return "backproduct";
	}
//
//	@RequestMapping("/hello")
//	// read the provided form data
//	public String display(@RequestParam("title") String title, Model m) {
//		List<ProductBean> bb = service.getProductsBytitle(title);
//		m.addAttribute("products", bb);
//		return "products";
//	}

//	@RequestMapping(value = "/getImage/{productId}", method = RequestMethod.GET)
//	public ResponseEntity<byte[]> getImage(HttpServletResponse resp, @PathVariable Integer productId) {
//		String filePath = "/resources/images/NoImage.jpg";
//		byte[] media = null;
//		HttpHeaders headers = new HttpHeaders();
//		String filename = "";
//		int len = 0;
//
//		
//		headers.setCacheControl(CacheControl.noCache().getHeaderValue());
//		String mimeType = context.getMimeType(filename);
//		MediaType mediaType = MediaType.valueOf(mimeType);
//		System.out.println("mediaType =" + mediaType);
//		headers.setContentType(mediaType);
//		ResponseEntity<byte[]> responseEntity = new ResponseEntity<>(media, headers, HttpStatus.OK);
//		System.out.println("==============222222==============");
//		return responseEntity;
//	}
//	@RequestMapping(value = "/addimage", method = RequestMethod.GET)
//	public String AddImage(Integer id, Model model) {
//
//		return "addimage";
//
//	}
//
//	@RequestMapping(value = "/addimage", method = RequestMethod.POST)
//	public String processAddNewProductForm(@RequestParam("id") Integer productId,
//			BindingResult result, HttpServletRequest request) {
//		
//		
//
//		String[] suppressedFields = result.getSuppressedFields();
//		if (suppressedFields.length > 0) {
//			throw new RuntimeException("嘗試傳入不允許的欄位: " + StringUtils.arrayToCommaDelimitedString(suppressedFields));
//		}
//
//		String rootDirectory = context.getRealPath("/");
//		return "products";
//		
//		
//	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(@ModelAttribute("id") Integer id) {
		service.deleteProductBean(id);

		return "redirect:/backproducts";

	}
}
