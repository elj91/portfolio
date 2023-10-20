function moyenne(){

    var a = document.getElementById("n1").value;
    var b = document.getElementById("n2").value;
    var c = document.getElementById("n3").value;
    var d = document.getElementById("coef1").value;
    var e = document.getElementById("coef2").value;
    var f = document.getElementById("coef3").value;
    var g = (Number(a)*Number(d)+Number(b)*Number(e)+Number(c)*Number(f))/(Number(d)+Number(e)+Number(f))
    r1.value=g
    if (g<10)
        moy1.value="Redoublant";
    else if (g<14)
        moy1.value="Admis";
    else if (g<16)
        moy1.value="Admis Bien";
    else
        moy1.value="Admis Très Bien";





}
