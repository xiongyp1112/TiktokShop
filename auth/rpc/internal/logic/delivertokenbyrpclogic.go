package logic

import (
	"context"

	"tiktokShop/auth/rpc/auth"
	"tiktokShop/auth/rpc/internal/svc"

	"github.com/zeromicro/go-zero/core/logx"
)

type DeliverTokenByRPCLogic struct {
	ctx    context.Context
	svcCtx *svc.ServiceContext
	logx.Logger
}

func NewDeliverTokenByRPCLogic(ctx context.Context, svcCtx *svc.ServiceContext) *DeliverTokenByRPCLogic {
	return &DeliverTokenByRPCLogic{
		ctx:    ctx,
		svcCtx: svcCtx,
		Logger: logx.WithContext(ctx),
	}
}

func (l *DeliverTokenByRPCLogic) DeliverTokenByRPC(in *auth.DeliverTokenReq) (*auth.DeliveryResp, error) {
	// todo: add your logic here and delete this line

	return &auth.DeliveryResp{}, nil
}
