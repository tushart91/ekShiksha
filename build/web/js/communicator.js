function getXMLObject() //XML Object
{
    var xmlHttp = false;
    try {
        xmlHttp = new ActiveXObject("Msxml2.XMLHTTP") //For old Microsoft Browers
    }catch(e) {
        try{
            xmlHttp = new ActiveXObject("Microsoft.XMLHTTP") // For Microsoft IE 6.0+
        }catch(e2) {
            xmlHttp = false; // No browser accepts the XMLHTTP Object then false
        }
    }
    if(!xmlHttp && typeof XMLHttpRequest != 'undefined') {
        xmlHttp = new XMLHttpRequest(); // For Mozilla, opera Browers
    }
    return xmlHttp; //Mandatory statement returning the ajax object created
}

var xmlhttp = new getXMLObject(); //xmlhttp holds the ajax objec

function publishResult(result) {
    if(xmlhttp) {
        xmlhttp.open("GET","../pages/trackPerformance.jsp?result="+result,true);
        xmlhttp.onreadystatechange=function () {
            if(xmlhttp.readyState == 4) {
                if(xmlhttp.status == 200) {
                    var res = xmlhttp.responseText; //Update the HTML Form element
                }else {
                    //error during ajax call
                }
            }
        };
        xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        xmlhttp.send(null);
    }
}

