// Code generated by goctl. DO NOT EDIT.
// goctl 1.7.6

package handler

import (
	"net/http"

	"tiktokShop/product/api/internal/svc"

	"github.com/zeromicro/go-zero/rest"
)

func RegisterHandlers(server *rest.Server, serverCtx *svc.ServiceContext) {
	server.AddRoutes(
		[]rest.Route{
			{
				Method:  http.MethodGet,
				Path:    "/api/product/:id",
				Handler: GetProductHandler(serverCtx),
			},
			{
				Method:  http.MethodGet,
				Path:    "/api/products",
				Handler: ListProductsHandler(serverCtx),
			},
			{
				Method:  http.MethodGet,
				Path:    "/api/products/search",
				Handler: SearchProductsHandler(serverCtx),
			},
		},
	)
}
