package logic

import (
	"context"

	"tiktokShop/payment/rpc/internal/svc"
	"tiktokShop/payment/rpc/payment"

	"github.com/zeromicro/go-zero/core/logx"
)

type ChargeLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger
}

func NewChargeLogic(ctx context.Context, svcCtx *svc.ServiceContext) *ChargeLogic {
	return &ChargeLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *ChargeLogic) Charge(in *payment.ChargeReq) (*payment.ChargeResp, error) {
	// todo: add your logic here and delete this line

	return &payment.ChargeResp{}, nil
}
