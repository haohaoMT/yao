package com.yao.common.core.exception;

/**
 * 内部认证异常
 * 
 * @author yao
 */
public class InnerAuthException extends RuntimeException
{
    private static final long serialVersionUID = 1L;

    public InnerAuthException(String message)
    {
        super(message);
    }
}
