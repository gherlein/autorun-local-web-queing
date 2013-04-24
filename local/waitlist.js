

function actWaitListVars(actStr,callback,nameStr,num)
{
    if(verifyBSP()==false) { return false;}
    if(bsputils_env.playerurl==null) {
      sUrl="http://localhost:8080/ActWaitListVars";
    } else {
      sUrl=bsputils_env.playerurl+"/ActWaitListVars";
    }

    nameStr = typeof nameStr !== 'undefined' ? nameStr : "none";  
    num  = typeof num  !== 'undefined' ? num  : "none";  

    var posting;
    if(actStr=="get")
    {
        posting=$.post(sUrl, { action: "get" } );
    } else if (actStr=="delete")
    {
        posting=$.post(sUrl, { action: "delete", name: nameStr} );
    } else if (actStr=="change")
    {
        posting=$.post(sUrl, { action: "change", name: nameStr, number: num} );
    } else if (actStr=="add")
    {
        posting=$.post(sUrl, { action: "add", name: nameStr, number: num} );
    }

    var waitList=new Array();
    posting.done(function(data,textStatus,jqXHR) {
        un=jqXHR.responseText;
        xmlDoc = $.parseXML( un );
        $xml = $( xmlDoc );

        $xml.find('party').each(function(){
            var name="";
            var number="";
            $(this).children().each(function(){
                if(this.tagName=="name")    
                name=$(this).text();
                if(this.tagName=="number")    
                number=$(this).text();
            })
            var uv=new waitListVar(name,number);
            waitList.push(uv);
        });
        printObj(waitList);
        callback(waitList);
    });
}


function waitListVar(name,number)
{
    this.name=name;
    this.number=number;
}

