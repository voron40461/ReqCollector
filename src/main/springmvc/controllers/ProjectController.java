package springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/projects")
public class ProjectController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView index(ModelMap model) {
        return new ModelAndView("projects/index");
    }

    @RequestMapping(method = RequestMethod.GET, value = "/{id}")
    public ModelAndView show(@PathVariable("id") String projectId) {
        return new ModelAndView("redirect:/projects/" + projectId + "/requirements");
    }
}
