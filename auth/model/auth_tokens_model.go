package model

import (
	"github.com/zeromicro/go-zero/core/stores/cache"
	"github.com/zeromicro/go-zero/core/stores/sqlx"
)

var _ AuthTokensModel = (*customAuthTokensModel)(nil)

type (
	// AuthTokensModel is an interface to be customized, add more methods here,
	// and implement the added methods in customAuthTokensModel.
	AuthTokensModel interface {
		authTokensModel
	}

	customAuthTokensModel struct {
		*defaultAuthTokensModel
	}
)

// NewAuthTokensModel returns a model for the database table.
func NewAuthTokensModel(conn sqlx.SqlConn, c cache.CacheConf, opts ...cache.Option) AuthTokensModel {
	return &customAuthTokensModel{
		defaultAuthTokensModel: newAuthTokensModel(conn, c, opts...),
	}
}
