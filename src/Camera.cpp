/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   Camera.cpp                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ppreez <ppreez@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/07/13 15:29:32 by ppreez            #+#    #+#             */
/*   Updated: 2019/07/13 16:34:03 by ppreez           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "Camera.hpp"

// Camera::Camera(glm::vec3 up = glm::vec3(0.0f, 1.0f, 0.0f), glm::vec3 Pos = glm::vec3(0.0f, 0.0f, 0.0f), float yaw = YAW, float pitch = PITCH)
// :front(glm::vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), Fov(FOV), MouseSensitivity(SENSITIVITY)
// {
//     position = Pos;
//     worldUp = up;
//     Yaw = yaw;
//     Pitch = pitch;
//     updateCameraVectors();
// }

Camera::Camera(float xPos, float yPos, float zPos, float xUp, float yUp, float zUp,  float pitch, float yaw)
:front(glm::vec3(0.0f, 0.0f, -1.0f)), MovementSpeed(SPEED), Fov(FOV), MouseSensitivity(SENSITIVITY)
{
    position = glm::vec3(xPos, yPos, zPos);
    worldUp = glm::vec3(xUp, yUp, zUp);
    Yaw = yaw;
    Pitch = pitch;
    updateCameraVectors();
}

Camera::Camera(Camera const &rhs)
{
    *this = rhs;
}

Camera &Camera::operator=(Camera const &rhs)
{
    if (this != &rhs)
        *this = rhs;
    return *this;
}

Camera::~Camera()
{}

glm::mat4 Camera::getViewMatrix()
{
    return glm::lookAt(position, position + front, up);
}

void Camera::processKeyboardInput(Camera_Movement direction, float deltaTime)
{
    float vel = MovementSpeed * deltaTime;
    if (direction == FORWARD)
        position += front * vel;
    if (direction == BACKWARD)
        position -= front * vel;
    if (direction == LEFT)
        position -= right * vel;
    if (direction == RIGHT)
        position += right * vel;
    // position.y = 0.0f;
}

void Camera::processMouseMovement(float xOffset, float yOffset, GLboolean constriainPitch = true)
{
    xOffset *= MouseSensitivity;
    yOffset *= MouseSensitivity;

    Yaw += xOffset;
    Pitch += yOffset;
    if (constriainPitch)
    {
        if (Pitch > 89.0f)
            Pitch = 89.0f;
        if (Pitch < -89.0f)
            Pitch = -89.0f;
    }
    updateCameraVectors();
}

void Camera::processMouseScroll(float yOffset)
{
    if (Fov > 1.0f && Fov < 45.0f)
        Fov -= yOffset;
    if (Fov < 1.0f)
        Fov = 1.0f;
    if (Fov > 45.0f)
        Fov = 45.0f;
    updateCameraVectors();
}

void Camera::updateCameraVectors()
{
    glm::vec3 front;
    front.x = cos(glm::radians(Yaw)) * cos(glm::radians(Pitch));
    front.y = cos(glm::radians(Pitch));
    front.z = cos(glm::radians(Pitch)) * sin(glm::radians(Yaw));

    front = glm::normalize(front);
    right = glm::normalize(glm::cross(front, worldUp));
    up = glm::normalize(glm::cross(right, front));
}