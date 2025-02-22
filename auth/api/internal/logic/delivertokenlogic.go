package logic

import (
	"context"

	"tiktokShop/auth/api/internal/svc"
	"tiktokShop/auth/api/internal/types"

	"github.com/zeromicro/go-zero/core/logx"
)

type DeliverTokenLogic struct {
	logx.Logger
	ctx    context.Context
	svcCtx *svc.ServiceContext
}

func NewDeliverTokenLogic(ctx context.Context, svcCtx *svc.ServiceContext) *DeliverTokenLogic {
	return &DeliverTokenLogic{
		Logger: logx.WithContext(ctx),
		ctx:    ctx,
		svcCtx: svcCtx,
	}
}

func (l *DeliverTokenLogic) DeliverToken(req *types.DeliverTokenRequest) (resp *types.DeliverTokenResponse, err error) {
	// todo: add your logic here and delete this line

	return
}
