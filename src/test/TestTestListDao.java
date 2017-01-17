package test;

import dao.TestListDao;

import java.util.ArrayList;

/**
 * Created by wt on 2017/1/15.
 */
public class TestTestListDao {
    public static void main(String[] args) {
        TestListDao testListDao = new TestListDao();
        ArrayList<String> list = new ArrayList<>();
        list = testListDao.getAllItems();
        System.out.println(list.size());
        for(int i = 0;i<list.size();i++)
            System.out.println(list.get(i));
    }
}
