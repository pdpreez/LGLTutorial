/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   GLFWLib.hpp                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppreez <ppreez@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/14 10:41:30 by ppreez            #+#    #+#             */
/*   Updated: 2019/07/14 10:48:47 by ppreez           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef GLFWLIB_HPP
#define GLFWLIB_HPP

#include "../includes/stb_image.h"

#include "../glad/include/KHR/khrplatform.h"
#include "../glad/include/glad/glad.h"
#include "../glfw/include/GLFW/glfw3.h"
#include "../includes/Shader.hpp"
#include "../includes/Camera.hpp"
#include "../includes/glm/glm.hpp"
#include "../includes/glm/gtc/matrix_transform.hpp"
#include "../includes/glm/gtc/type_ptr.hpp"
#include <iostream>

class GLFWLib
{
    public:
        GLFWLib();
        GLFWLib(GLFWLib const &rhs);
        GLFWLib &operator=(GLFWLib const &rhs);
        ~GLFWLib();


    private:
        GLFWwindow *window;
        const unsigned int SCR_WIDTH;
        const unsigned int SCR_HEIGHT;
        bool firstMouseMove;
        float mixvalue;
        float deltatime;
        float lastFrame;
        float lastMouseX;
        float lastMouseY;

        void process_input(GLFWwindow *window);
        void mouse_callback(GLFWwindow *window, double xpos, double ypos);
};

#endif