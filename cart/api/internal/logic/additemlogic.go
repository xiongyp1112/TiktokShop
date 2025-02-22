package logic

import (
	"context"

	"tiktokShop/cart/api/internal/svc"
	"tiktokShop/cart/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type AddItemLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewAddItemLogic(ctx context.Context, svcCtx *svc.ServiceContext) *AddItemLogic {
	return &AddItemLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *AddItemLogic) AddItem(req *types.AddItemReq) (resp *types.AddItemResp, err error) {
	// todo: add your logic here and delete this line

	return
}
