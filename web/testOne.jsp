<%@ page import="dao.TestListDao" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: wt
  Date: 2017/1/15
  Time: 14:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="local.css" />
    <script language="javascript" charset="utf-8">
        validate = function() {
            var result=false ; var testnum = '';
            <%for(int j = 0;j<104;j++){
        String num = "t"+j;

    %>
            for(var i=0;i<document.test.<%=num%>.length;i++){
                if(document.test.<%=num%>[i].checked)
                {
                    result=true;

                }
            }
            if(!result)
            {
                testnum += <%=j+1%> + '题 ';
            } result=false;<% }%>  if(testnum!='') {alert(testnum+'没有做');window.event.returnValue = false;}
        }

    </script>


</head>
<body>



<form name="test" action="" method="post">
<table id="table" >
    <%
        String pa = request.getParameter("p");
        int p;

        if(pa==null){
            p = 1;
        }
        else {
            if(Integer.parseInt(pa)>11){
                p = 11;
            }
            else {
                if(Integer.parseInt(pa)<1){
                  p = 1;
                }
                else{
                    p = Integer.parseInt(pa);
                }
            }
        }


        TestListDao itemDao = new TestListDao();
        ArrayList<String> list = itemDao.getAllItems();
        int t;
        if(10*p>104) {
            t = 104;
        }
        else{
            t= 10*p;
        }
        for(int i = 0;i < 104;i++){
    %>
    <tr>
        <td>
            第<%=i+1  %>题
        </td>
       <td>
           <%=list.get(i)  %>
       </td>
        <td>
            <label><input name=<%="t"+i %> type="radio" value="1" />苹果 </label>
            <label><input name=<%="t"+i %> type="radio" value="2" />桃子 </label>
            <label><input name=<%="t"+i %> type="radio" value="3" />香蕉 </label>
            <label><input name=<%="t"+i %> type="radio" value="4" />梨 </label>

        </td>
    </tr>
    <%
        }
    %>

</table>
    <%  int pnum;
        if(pa==null){
            pnum = 2;
        }
        else {
            if(Integer.parseInt(pa)>11){
                pnum = 13;
            }
            else {
                if(Integer.parseInt(pa)<1){
                    pnum = 2;
                }
                else{
                    pnum = Integer.parseInt(pa)+1;
                }
            }
        }


    %>
    <%if(pnum != 13){

    %>
    <div id="submitDiv"><a id="nextLink" href="testOne.jsp?p=<%=pnum%>">下一页</a>


   <% }%>
    <br>
    <input id="submitButton" type="submit" name="提交" onclick="validate()"/>
</div>
</form>

</body>
</html>
