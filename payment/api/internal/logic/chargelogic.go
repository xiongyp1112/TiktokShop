package logic

import (
	"context"

	"tiktokShop/payment/api/internal/svc"
	"tiktokShop/payment/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type ChargeLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewChargeLogic(ctx context.Context, svcCtx *svc.ServiceContext) *ChargeLogic {
	return &ChargeLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *ChargeLogic) Charge(req *types.ChargeRequest) (resp *types.ChargeResponse, err error) {
	// todo: add your logic here and delete this line

	return
}
