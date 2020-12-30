package app.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    public void addViewControllers(ViewControllerRegistry registry) {
        registry.addViewController("/login").setViewName("login");
        registry.addViewController("/login").setViewName("login.ftl");

        registry.addViewController("/main").setViewName("main.ftl");
        registry.addViewController("/requests").setViewName("requests.ftl");
        registry.addViewController("/addpc").setViewName("addpc.ftl");
        registry.addViewController("/addpc").setViewName("searchpcbyid.ftl");
        registry.addViewController("/registration").setViewName("registration.ftl");
    }

}