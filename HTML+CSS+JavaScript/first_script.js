var Body = {
    set2: function(color) {
        document.querySelector('body').style.color = color;
    },
    set3: function(color) {
        document.querySelector('body').style.backgroundColor = color;
    }
}
var Links = {
    set1: function(color) {
        $('a').css('color', color);
 //       var alist = document.querySelectorAll('a');
 //       var i = 0;
 //       while(i < alist.length) {
 //           alist[i].style.color = color;
 //           i += 1;}
    }
 }
function handler(self) {
    var target = document.querySelector('body');
    if (self.value === 'night'){
        Body.set3('black');
        Body.set2('white');
        self.value = 'day';
        Links.set1('powderblue');
    } else  {
        Body.set3('white');
        Body.set2('black');
        self.value = 'night';
        Links.set1('blue');
    }
}