package handler

import (
	"net/http"

	"github.com/zeromicro/go-zero/rest/httpx"
	"tiktokShop/auth/api/internal/logic"
	"tiktokShop/auth/api/internal/svc"
	"tiktokShop/auth/api/internal/types"
)

func VerifyTokenHandler(svcCtx *svc.ServiceContext) http.HandlerFunc {
	return func(w http.ResponseWriter, r *http.Request) {
		var req types.VerifyTokenRequest
		if err := httpx.Parse(r, &req); err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
			return
		}

		l := logic.NewVerifyTokenLogic(r.Context(), svcCtx)
		resp, err := l.VerifyToken(&req)
		if err != nil {
			httpx.ErrorCtx(r.Context(), w, err)
		} else {
			httpx.OkJsonCtx(r.Context(), w, resp)
		}
	}
}
