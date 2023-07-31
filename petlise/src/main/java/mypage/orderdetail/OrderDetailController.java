package mypage.orderdetail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import shop.payment.ShopOrderInfoDTO;
import shop.payment.ShopOrderProductDTO;
import user.UserDTO;

@Controller
public class OrderDetailController {
	
	@Autowired
	OrderDetailService service;
	
	@GetMapping("/orderdetail")
	public ModelAndView orderDetail(@RequestParam("order_id") String order_id, @RequestParam("user_id") String user_id) {
		
		List<ShopOrderProductDTO> myOrderProduct = service.myOrderProduct(order_id);
		List<UserDTO> myUserInfo = service.myUserInfo(user_id);
		List<ShopOrderInfoDTO> myDeliveryInfo = service.myDeliveryInfo(order_id);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("myOrderProduct", myOrderProduct);
		mv.addObject("myUserInfo", myUserInfo);
		mv.addObject("myDeliveryInfo", myDeliveryInfo);
		mv.setViewName("/mypage/orderDetail");
		return mv;
	}

}
