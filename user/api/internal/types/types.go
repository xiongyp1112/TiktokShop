// Code generated by goctl. DO NOT EDIT.
// goctl 1.7.6

package types

type LoginRequest struct {
	Email    string `json:"email"`
	Password string `json:"password"`
}

type LoginResponse struct {
	UserId int32 `json:"user_id"`
}

type RegisterRequest struct {
	Email           string `json:"email"`
	Password        string `json:"password"`
	ConfirmPassword string `json:"confirm_password"`
}

type RegisterResponse struct {
	UserId int32 `json:"user_id"`
}
