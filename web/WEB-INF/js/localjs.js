/**
 * Created by wt on 2017/1/15.
 */
function validate(){
    var resualt=false;
    for(var i=0;i<document.frmvote.radiobutton.length;i++)
    {

        if(document.frmvote.radiobutton[i].checked)
        {
            resualt=true;
        }
    }
    if(!resualt)
    {
        alert(" 为啥不选一个捏~！");
    }
    return resualt;
}