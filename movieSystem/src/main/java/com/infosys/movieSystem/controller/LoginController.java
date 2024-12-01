package com.infosys.movieSystem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.infosys.movieSystem.bean.MovieUser;
import com.infosys.movieSystem.service.MovieUserService;

@RestController
public class LoginController {

    @Autowired
    private MovieUserService service;

    @Autowired
    private BCryptPasswordEncoder bCrypt;

    // Landing Page
    @GetMapping("/")
    public ModelAndView showLandingPage() {
        return new ModelAndView("landingpage");
    }

    // Index Page (for Admin or Customer)
    @GetMapping("/index")
    public ModelAndView showIndexPage() {
        String page = "";
        String role = service.getRole();
        System.out.println("The user role is: " + role);
        if (role.equalsIgnoreCase("Admin")) {
            page = "indexAdmin";
        } else if (role.equalsIgnoreCase("Customer")) {
            page = "indexCustomer";
        }
        return new ModelAndView(page);
    }

    // Login Page with Error Handling
    @GetMapping("/loginPage")
    public ModelAndView showLoginPage(@RequestParam(value = "error", required = false) String error) {
        ModelAndView mv = new ModelAndView("loginPage");
        if ("true".equals(error)) {
            mv.addObject("loginError", true); // Pass an error flag to the frontend
        } else {
            mv.addObject("loginError", false);
        }
        return mv;
    }

    // Login Error Page
    @GetMapping("/loginerror")
    public ModelAndView showLoginErrorPage() {
        return new ModelAndView("redirect:/loginPage?error=true"); // Redirect with error flag
    }

    // Registration Page
    @GetMapping("/register")
    public ModelAndView showUserRegisterPage() {
        MovieUser user = new MovieUser();
        ModelAndView mv = new ModelAndView("newUserPage");
        mv.addObject("userRecord", user);
        return mv;
    }

    // Register New User
    @PostMapping("/register")
    public ModelAndView saveNewUser(@ModelAttribute("userRecord") MovieUser user) {
        MovieUser newUser = new MovieUser();
        String encodedPassword = bCrypt.encode(user.getPassword());
        newUser.setName(user.getName());
        newUser.setRole(user.getRole());
        newUser.setEmail(user.getEmail());
        newUser.setUsername(user.getUsername());
        newUser.setPassword(encodedPassword);
        service.save(newUser);
        return new ModelAndView("loginPage");
    }
}
