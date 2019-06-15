//contetn为要显示的内容
//height为离窗口顶部的距离
//time为多少秒后关闭的时间，单位为秒
function showTips( content, height, time ){
    //窗口的宽度
    var windowWidth  = $(window).width();
    var tipsDiv = '<div class="tipsClass">' + content + '</div>';
    $( 'body' ).append( tipsDiv );
    $( 'div.tipsClass' ).css({
        'top'       : height + 'px',
        'left'      : ( windowWidth / 2 ) - 350/2 + 'px',
        'position'  : 'absolute',
        'padding'   : '3px 5px',
        'background': 'skyblue',
        'font-size' : 16 + 'px',
        'margin'    : '0 auto',
        'text-align': 'center',
        'width'     : '200px',
        'height'    : '50px',
        'color'     : '#fff',
        'opacity'   : '0.8',
        'border-radius':'30%'
    }).show();
    setTimeout( function(){$( 'div.tipsClass' ).fadeOut();}, ( time * 1000 ) );
}