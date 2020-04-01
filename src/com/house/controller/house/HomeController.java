package com.house.controller.house;

import com.house.entity.House;
import com.house.service.IHouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * 首页控制类
 *
 * @author chriy
 */
@Controller
public class HomeController {

    @Autowired
    private IHouseService service;

    /**
     * 首页
     *
     * @param request request
     * @return view
     */
    @GetMapping({"/index.html", "/"})
    public String index(HttpServletRequest request) {
        List<House> findHomeInfo = service.findHomeInfo();
        request.getSession().setAttribute("House", findHomeInfo);
        return "index/index.jsp";
    }

    /**
     * 模糊查询
     *
     * @param request  request
     * @param keywords keywords
     * @return res
     */
    @PostMapping("/fuzzy")
    public String findHouseByLike(HttpServletRequest request, String keywords) {
        List<House> findHomeInfo = service.findHouseByLike(keywords);
        request.getSession().removeAttribute("House");
        request.getSession().setAttribute("House", findHomeInfo);
        return "index/index.jsp";
    }

    /**
     * 价格升序查询
     *
     * @param request request
     * @return res
     */
    @GetMapping("/priceAsc")
    public String findPriceAsc(HttpServletRequest request) {
        List<House> findHomeInfo = service.findHouseOrderByAsc();
        request.getSession().removeAttribute("House");
        request.getSession().setAttribute("House", findHomeInfo);
        return "index/index.jsp";
    }

    /**
     * 价格降序查询
     *
     * @param request request
     * @return res
     */
    @GetMapping("/priceDesc")
    public String findPriceDesc(HttpServletRequest request) {
        List<House> findHomeInfo = service.findHouseOrderByDesc();
        request.getSession().removeAttribute("House");
        request.getSession().setAttribute("House", findHomeInfo);
        return "index/index.jsp";
    }
}
