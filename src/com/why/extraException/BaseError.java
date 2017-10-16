package com.why.extraException;
/**
 * uniform exception class, uniform exception process with id+cause.
 * the final message is formated from localize message resource.
 * @author bsmith.zhao
 * @date 2006-05-16 11:22:12
 */
public class BaseError extends Error
{
    protected String key;
    protected Object[] args;
	
    /**
     * 
     * @param key 寮傚父鎻愮ず淇℃�?
     */
    public BaseError(String key)
    {
        super(key);
        this.key = key;
    }
	
    /**
     * 
     * @param key 寮傚父鎻愮ず淇℃�?
     * @param cause 寮傚父�?硅薄
     */
    public BaseError(String key, Throwable cause)
    {
        super(key, cause);
        this.key = key;
    }
	
    /**
     * 
     * @param key 寮傚父鎻愮ず淇℃�?
     * @param args 鍦ㄦ姏寮傚父鏃舵妸鏌愪簺鏁版嵁涔熸姏缁欏紓甯稿鐞嗚�?
     */
    public BaseError(String key,  Object ... args)
    {
        super(key);
        this.key = key;
        this.args = args;
    }
	
    /**
     * 
     * @param key 寮傚父鎻愮ず淇℃�?
     * @param cause 寮傚父�?硅薄
     * @param args 鍦ㄦ姏寮傚父鏃舵妸鏌愪簺鏁版嵁涔熸姏缁欏紓甯稿鐞嗚�?
     */
    public BaseError(String key, Throwable cause, Object ... args)
    {
        super(key, cause);
        this.key = key;
        this.args = args;
    }

    public String getKey()
    {
        return key;
    }

    public Object[] getArgs()
    {
        return args;
    }
}