package springmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/projects/{id}/requirements")
public class RequirementController {

    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView index(@PathVariable("id") String projectId) {
        ModelAndView modelAndView = new ModelAndView("requirements/index");

        modelAndView.addObject("projectId", projectId);

        return modelAndView;
    }

    @RequestMapping(value="/{cardId}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable("cardId") String cardId) {
        ModelAndView modelAndView = new ModelAndView("requirements/edit");

        // DAO.get(cardId);

        modelAndView.addObject("cardId", cardId);

        return modelAndView;
    }

    @RequestMapping(value="/{cardId}", method = RequestMethod.POST)
    public ModelAndView update(@PathVariable("cardId") String cardId, @PathVariable("id") String projectId) {

        // DAO.update(cardId);

        return index(projectId);
    }
}
