/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.cpp                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppreez <ppreez@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/05 11:24:19 by ppreez            #+#    #+#             */
/*   Updated: 2019/07/12 11:17:45 by ppreez           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#define STB_IMAGE_IMPLEMENTATION
#include "../includes/stb_image.h"

#include "../glad/include/KHR/khrplatform.h"
#include "../glad/include/glad/glad.h"
#include "../glfw/include/GLFW/glfw3.h"
#include "../includes/Shader.hpp"
#include <iostream>

static void key_callback(GLFWwindow *window, int key, int scancode, int action, int mods)
{
    (void)scancode;
    (void)mods;
    if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, GLFW_TRUE);
}

static void error_callback(int error, const char* description)
{
    (void)error;
    fprintf(stderr, "Error: %s\n", description);
}

int main()
{
    if (!glfwInit())
    {
        std::cout << "Initialisation failed. " << std::endl;
        glfwTerminate();
        exit(1);
    }
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);
    glfwSetErrorCallback(error_callback);
    
    GLFWwindow *window = glfwCreateWindow(800, 600, "My window", NULL, NULL);

    if (!window)
    {
        std::cout << "window creation failed. " << std::endl;
        glfwTerminate();
        exit(1);
    }
    
    glfwMakeContextCurrent(window);
    gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);
    glfwSetKeyCallback(window, key_callback);
    
    int width, height, nrChannels;
    glfwGetFramebufferSize(window, &width, &height);
    glViewport(0, 0, width, height);

    float vertices[] = 
    {
         0.5f,   0.5f, 0.0f,    1.0f, 0.0f, 0.0f,   1.0f, 1.0f,
         0.5f,  -0.5f, 0.0f,    0.0f, 1.0f, 0.0f,   1.0f, 0.0f,
        -0.5f,  -0.5f, 0.0f,    0.0f, 0.0f, 1.0f,   0.0f, 0.0f,
        -0.5f,   0.0f, 0.0f,    1.0f, 1.0f, 0.0f,   0.0f, 1.0f
    };

    float tx_coord[] = 
    {
        0.0f, 0.0f,
        1.0f, 0.0f,
        0.5f, 1.0f
    };
    
    unsigned int texture;
    glGenTextures(1, &texture);
    glBindTexture(GL_TEXTURE_2D, texture);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_MIRRORED_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_MIRRORED_REPEAT);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    
    unsigned char *data = stbi_load("container.jpg", &width, &height, &nrChannels, 0);
    if (data)
    {
        glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, data);
        glGenerateMipmap(GL_TEXTURE_2D);
    }
    else
    {
        std::cout << "Texture loading failed." << std::endl;
    }
    
    
    stbi_image_free(data);



    Shader ourShader("./shaders/vertex.vs", "./shaders/fragment.fs");

    unsigned int VAO;
    unsigned int VBO;
    glGenVertexArrays(1, &VAO);
    glGenBuffers(1, &VBO);

    glBindVertexArray(VAO);
    glBindBuffer(GL_ARRAY_BUFFER, VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), &vertices, GL_STATIC_DRAW);
    
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *)0);
    glEnableVertexAttribArray(0);
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float), (void *)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    // float xOffset = 0.2f;
    float yOffset = 0.3f;
    // float zOffset = 0.0f;

    while (!glfwWindowShouldClose(window))
    {
        
        if (yOffset > -0.5)
            ourShader.setFloat("yOffset", yOffset -= 0.1f);        
        glClearColor(0.1f, 0.1f, 0.1f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT);
        ourShader.use();
        glBindVertexArray(VAO);
        glDrawArrays(GL_TRIANGLES, 0, 3);
        glfwSwapBuffers(window);
        glfwPollEvents();
    }
    glfwTerminate();
    return (1);
}