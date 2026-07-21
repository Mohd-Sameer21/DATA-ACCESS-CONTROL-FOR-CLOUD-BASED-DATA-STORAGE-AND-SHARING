package com.interfaces;

import java.util.*;

import com.BeanClasses.BeanClassMethods;
import com.BeanClasses.UploadBean;
import com.BeanClasses.keyBean;
public interface InterfaceMethods {
public boolean login(BeanClassMethods bm);
public int register(BeanClassMethods bm);
public ArrayList<String> userSearch(UploadBean bean,String keyy);
public ArrayList<String> userSearch1(UploadBean bean,String keyy);
public ArrayList<String> getKeys(String table);
public int sendfiles(UploadBean uploadBean);
public int insertrequest(BeanClassMethods bcm);
public int insertkey(keyBean kb);

}
