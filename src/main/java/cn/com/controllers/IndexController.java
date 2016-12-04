package cn.com.controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by xiaxuan on 16/11/27.
 */
@RestController
public class IndexController {

    @RequestMapping(value = "/index", produces = "application/json;charset=utf-8")
    public Object index() {
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("msg", "hello world");
        return result;
    }
}
