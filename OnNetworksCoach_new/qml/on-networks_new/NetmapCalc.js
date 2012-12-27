var n;
var angle;  //计算平均角大小
var angleRadians;



function coor_x(n)
{
    if(n == 0)
        angle = 360;
    else
        angle = 360 / (n);
    angleRadians = angle * Math.PI / 180;   //换算成
    //var xx = 300 + 200 * Math.sin(angleRadians)

    return  angleRadians
}

function coor_y(n)
{
    angle = 360 / (n);
    angleRadians = angle * Math.PI / 180;
    var yy = 300 + 200 * Math.cos(angleRadians)
    return yy
}

function display(n)
{
    var array_x = new Array(0,0,0,0,0,0,0,0,0,0,0);
    // var array_x = new Array[10](0);
    var array_y = new Array(0,0,0,0,0,0,0,0,0,0,0);

    for(var i = 1; i <= n; i ++)
    {
        array_x[i] = 300 + 200 * (Math.cos(coor_x(n) * (i)));
        array_y[i] = 200 + 200 * (Math.sin(coor_x(n) * (i)));
    }

    image00.x = array_x[0];
    image01.x = array_x[1];
    image02.x = array_x[2];
    image03.x = array_x[3];
    image04.x = array_x[4];
    image05.x = array_x[5];
    image06.x = array_x[6];
    image07.x = array_x[7];


    image00.y = array_y[0];
    image01.y = array_y[1];
    image02.y = array_y[2];
    image03.y = array_y[3];
    image04.y = array_y[4];
    image05.y = array_y[5];
    image06.y = array_y[6];
    image07.y = array_y[7];


    //console.log(image01.x, image01.y)
}

