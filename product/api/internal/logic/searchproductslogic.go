package logic

import (
	"context"

	"tiktokShop/product/api/internal/svc"
	"tiktokShop/product/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type SearchProductsLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewSearchProductsLogic(ctx context.Context, svcCtx *svc.ServiceContext) *SearchProductsLogic {
	return &SearchProductsLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *SearchProductsLogic) SearchProducts(req *types.SearchProductsReq) (resp *types.SearchProductsResp, err error) {
	// todo: add your logic here and delete this line

	return
}
