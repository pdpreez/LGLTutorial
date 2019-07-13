/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Camera.hpp                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppreez <ppreez@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/13 15:29:30 by ppreez            #+#    #+#             */
/*   Updated: 2019/07/13 16:28:28 by ppreez           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef CAMERA_HPP
# define CAMERA_HPP

#include "../glad/include/glad/glad.h"
#include "../includes/glm/glm.hpp"
#include "../includes/glm/gtc/matrix_transform.hpp"

enum Camera_Movement
{
    FORWARD,
    BACKWARD,
    LEFT,
    RIGHT
};

const float YAW = -90.0f;
const float PITCH = 0.0f;
const float SPEED = 1.0f;
const float SENSITIVITY = 0.1f;
const float FOV = 45.0f;

class Camera
{
    public:
        Camera(glm::vec3 up = glm::vec3(0.0f, 1.0f, 0.0f), glm::vec3 Pos = glm::vec3(0.0f, 0.0f, 0.0f), float yaw = YAW, float pitch = PITCH)
:front(glm::vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), Fov(FOV), MouseSensitivity(SENSITIVITY)
{
    position = Pos;
    worldUp = up;
    Yaw = yaw;
    Pitch = pitch;
    updateCameraVectors();
}
        Camera(float xPos, float yPos, float zPos, float xUp, float yUp, float zUp,  float pitch, float yaw);
        Camera(Camera const &rhs);
        Camera &operator=(Camera const &rhs);
        ~Camera();

        glm::vec3 front;
        glm::vec3 right;
        glm::vec3 up;
        glm::vec3 position;
        glm::vec3 worldUp;
        
        float MovementSpeed;        
        float Fov;
        float Yaw;
        float Pitch;
        float MouseSensitivity;

        glm::mat4 getViewMatrix();
        void processMouseMovement(float xOffset, float yOffset, GLboolean constrainPitch);
        void processMouseScroll(float yOffset);
        void processKeyboardInput(Camera_Movement direction, float deltaTime);
        
    private:
        void updateCameraVectors();
};

#endif