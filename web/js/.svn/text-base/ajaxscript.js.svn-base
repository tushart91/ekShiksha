// ajax function

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
function checkUserId() {
    document.getElementById('userIdError').style.display = "none";
    document.getElementById('notAvailable').style.display = "none";
    document.getElementById('available').style.display = "none";
    var id = document.getElementById('userId').value;
    if(!isStringInRange(id,6,16) || !validateUserId(id)) {
        document.getElementById('userIdError').style.display = "inline";
    } else {
        if(xmlhttp) {
            xmlhttp.open("GET","pages/checkuserid.jsp?uid="+id,true);
            xmlhttp.onreadystatechange = handleUserIdServerResponse;
            xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            xmlhttp.send(null);
        }
    }

}

function handleUserIdServerResponse() {
    if(xmlhttp.readyState == 4) {
        if(xmlhttp.status == 200) {
            var res = xmlhttp.responseText; //Update the HTML Form element
            document.getElementById('userIdError').style.display = "none";
            if(res.match("true") != null) {
                document.getElementById('notAvailable').style.display = "none";
                document.getElementById('available').style.display = "inline";
                

            } else {

                document.getElementById('available').style.display = "none";
                document.getElementById('notAvailable').style.display = "inline";
            }

        }else {
            alert("Error during ajax call. Please try again");
        }
    }
}

function checkCaptcha() {
    
    var answer = document.getElementById('captchaText').value;
    if(!isStringInRange(answer,7,7)) {
        document.getElementById('captchaError').style.display = "inline";
    } else {
        if(xmlhttp) {
            xmlhttp.open("GET","pages/validateCaptcha.jsp?answer="+answer,true);
            xmlhttp.onreadystatechange=function () {
                if(xmlhttp.readyState == 4) {
                     if(xmlhttp.status == 200) {
                         var res = xmlhttp.responseText; //Update the HTML Form element
                         if(res.match("false") != null) {
                              document.getElementById('captchaError').style.display = "inline";
                         } else {
                              document.getElementById('captchaError').style.display = "none";
                         }
                    }else {
                         alert("Error during ajax call. Please try again");
                    }
                }
            };
            xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            xmlhttp.send(null);
        }
    }
}

function handleCheckCaptchaServerResponse() {
    alert("Hello");
    if(xmlhttp.readyState == 4) {
         if(xmlhttp.status == 200) {
             var res = xmlhttp.responseText; //Update the HTML Form element
             if(res.match("false") != null) {
                  document.getElementById('captchaError').style.display = "inline";
                  document.getElementById('capStatus').value = "invalid";
             } else {
                  document.getElementById('capStatus').value = "valid";
             }
        }else {
             alert("Error during ajax call. Please try again");
             document.getElementById('capHide').value="false";
        }
    }
}


function retrieveUrl(email) {
     if(xmlhttp) {
         xmlhttp.open("GET","pages/retrieveUrl.jsp?email="+email,true);
         xmlhttp.onreadystatechange=function () {
             if(xmlhttp.readyState == 4) {
                 if(xmlhttp.status == 200) {
                     var res = xmlhttp.responseText; //Update the HTML Form element
                     if(res.match("true") != null) {
                         document.getElementById('sent').style.display = "inline";
                         document.getElementById('message').style.display = "none";
                         document.getElementById('thankyou').style.display = "none";
                         document.getElementById('detail').style.display = "none";
                      } else {
                         document.getElementById('sent').style.display = "inline";
                         document.getElementById('sent').innerHTML="<div align=\"center\">Sorry, problem occurred while sending confirmation mail.</div>";
                         document.getElementById('message').style.display = "none";
                         document.getElementById('thankyou').style.display = "none";
                         document.getElementById('detail').style.display = "none";

                      }
                  }else {
                         alert("Error during ajax call. Please try again");
                  }
               }
          };
          xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
          xmlhttp.send(null);
      }
            
}

function requestTranslation(topicId,linkId) {
    if(xmlhttp) {
         xmlhttp.open("GET","pages/translationrequest.jsp?topicId="+topicId+"&linkId="+linkId,true);
         xmlhttp.onreadystatechange=function () {
             if(xmlhttp.readyState == 4) {
                 if(xmlhttp.status == 200) {
                     var res = xmlhttp.responseText; //Update the HTML Form element
                     if(res.match("true") != null) {
                         document.getElementById('rejected').style.display = "none";
                         document.getElementById('accepted').style.display = "inline";
                         document.getElementById('message').innerHTML="<p style=\"margin-top: 15px;\">Click <a href=\"showTranslationPage.do?topicId="+topicId+"&linkId="+linkId+">here</a> to translate these contents.</p>";
                      } else {
                          document.getElementById('accepted').style.display = "none";
                          document.getElementById('message').style.display = "none";
                          document.getElementById('rejected').style.display = "inline";
                      }
                  }else {
                         alert("Error during ajax call. Please try again");
                  }
               }
          };
          xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
          xmlhttp.send(null);
      }
}

function readFeedback(id,sno) {
    var done = "done"+sno;
    var notdone = "notdone"+sno;
    var status = "status"+sno;
    var mark = "mark"+sno;
    document.getElementById(done).style.display = "none";
    document.getElementById(notdone).style.display = "none";
        if(xmlhttp) {
            xmlhttp.open("GET","pages/readFeedback.jsp?type=update&id="+id,true);
            xmlhttp.onreadystatechange=function () {
                if(xmlhttp.readyState == 4) {
                     if(xmlhttp.status == 200) {
                         // Extract "true" or "false" from the returned data from the server.
                         // The xmlhttp.responseXML should contain either <valid>true</valid> or <valid>false</valid>
                         var message = xmlhttp.responseXML.getElementsByTagName("valid")[0].childNodes[0].nodeValue;
                         if(message == "true") {
                             document.getElementById(done).style.display = "block";
                             document.getElementById(status).innerHTML = "Read";
                             document.getElementById(mark).style.display = "none";
                         } else {
                             document.getElementById(notdone).style.display = "block";
                         }
                    }else {
                         document.getElementById(notdone).style.display = "block";
                    }
                }
            };
            xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            xmlhttp.send(null);
        }
}

function deleteFeedback(id,sno) {
    var row = "row"+sno;
    var subrow = "subrow"+sno;
    document.getElementById('done').style.display = "none";
    document.getElementById('notdone').style.display = "none";
        if(xmlhttp) {
            xmlhttp.open("GET","pages/readFeedback.jsp?type=delete&id="+id,true);
            xmlhttp.onreadystatechange=function () {
                if(xmlhttp.readyState == 4) {
                     if(xmlhttp.status == 200) {
                         // Extract "true" or "false" from the returned data from the server.
                         // The xmlhttp.responseXML should contain either <valid>true</valid> or <valid>false</valid>
                         var message = xmlhttp.responseXML.getElementsByTagName("valid")[0].childNodes[0].nodeValue;
                         if(message == "true") {
                             document.getElementById(row).style.display = "none";
                             document.getElementById(subrow).style.display = "none";
                             document.getElementById('done').style.display = "block";
                         } else {
                             document.getElementById('notdone').style.display = "block";
                         }
                    }else {
                         document.getElementById('notdone').style.display = "block";
                    }
                }
            };
            xmlhttp.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            xmlhttp.send(null);
        }
}

