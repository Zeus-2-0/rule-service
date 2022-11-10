package com.brihaspathee.zeus.exception;

/**
 * Created in Intellij IDEA
 * User: Balaji Varadharajan
 * Date: 10, November 2022
 * Time: 5:50 AM
 * Project: Zeus
 * Package Name: com.brihaspathee.zeus.exception
 * To change this template use File | Settings | File and Code Template
 */
public class RuleCategoryNotFoundException extends RuntimeException{

    public RuleCategoryNotFoundException(String message){
        super(message);
    }

    public RuleCategoryNotFoundException(String message, Throwable cause){
        super(message, cause);
    }
}
