
    /*$(document).ready(function() {  
    });*/

    var qr;
    var border; 
    var fullName;

    //this function creates the qr code based on the provided data
    function redrawQrCode(vCardData) {
      var jsonData = {};
      //check whether the function get call with data handover
      //if no data is provided with the function call the form fields get checked
      //if data is provided with the function call we work with the provided data
      if (!vCardData) {
        var vCard = "BEGIN:VCARD\r\nVERSION:3.0\r\nN:"+document.getElementById("LastN").value+";"+document.getElementById("FirstN").value+";;"+document.getElementById("title").value+";";
        fullName = document.getElementById("title").value+" "+document.getElementById("FirstN").value+" "+document.getElementById("LastN").value;
        vCard += "\r\nFN:;;"+fullName;
        if (document.getElementById("address_street").value != "") {
          var address = document.getElementById("address_street").value+";"+document.getElementById("address_city").value+";;"+document.getElementById("address_zip").value;
          vCard += "\r\nADR;type=WORK:"+address;
        }
          $('.form-control').each( function() {
            console.log("checking input fields");
            //Only work with field which are not empty
            if (this.value != "" && this.name !="FirstN" && this.name !="LastN" && this.name !="title" && this.name !="address_street" && this.name !="address_city" && this.name !="address_zip") {
              jsonData[this.name] = this.value;
              vCard += "\r\n"+this.name+":"+this.value;
            }
          });
          var data = JSON.stringify(jsonData);
          console.log("data "+data);
        vCard += "\r\nEND:VCARD";
        console.log(vCard);
        document.getElementById("vCard-output").value = vCard;
      } else {vCard = vCardData};

      // Returns a QrCode.Ecc object based on the radio buttons in the HTML form.
      function getInputErrorCorrectionLevel() {
        if (document.getElementById("errcorlvl-medium").checked)
          return qrcodegen.QrCode.Ecc.MEDIUM;
        else if (document.getElementById("errcorlvl-quartile").checked)
          return qrcodegen.QrCode.Ecc.QUARTILE;
        else if (document.getElementById("errcorlvl-high").checked)
          return qrcodegen.QrCode.Ecc.HIGH;
        else  // In case no radio button is depressed
          return qrcodegen.QrCode.Ecc.LOW;
      }

      var bitmapOutput = document.getElementById("output-format-bitmap").checked;
      // Reset output images in case of early termination
      var canvas = document.getElementById("qrcode-canvas");
      var svg = document.getElementById("qrcode-svg");
      canvas.style.display = "none";
      svg.style.display = "none";
      //Generate QR-Code
      var text = vCard; //vCard is ether filled with data during the function call or by collecting the data form the form fields
      var ecl = getInputErrorCorrectionLevel();
      var segs = qrcodegen.QrSegment.makeSegments(text);
      var minVer = parseInt(document.getElementById("version-min-input").value, 10);
      var maxVer = parseInt(document.getElementById("version-max-input").value, 10);
      var mask = parseInt(document.getElementById("mask-input").value, 10);
      var boostEcc = document.getElementById("boost-ecc-input").checked;
      qr = qrcodegen.QrCode.encodeSegments(segs, ecl, minVer, maxVer, mask, boostEcc);

      // Draw image output
      border = parseInt(document.getElementById("border-input").value, 10);
      if (border < 0 || border > 100)
        return;
      if (bitmapOutput) {
        var scale = parseInt(document.getElementById("scale-input").value, 10);
        if (scale <= 0 || scale > 30)
          return;
        qr.drawCanvas(scale, border, canvas);
        canvas.style.removeProperty("display");
      } else {
        var code = qr.toSvgString(border);
        svg.setAttribute("viewBox", / viewBox="([^"]*)"/.exec(code)[1]);
        svg.querySelector("path").setAttribute("d", / d="([^"]*)"/.exec(code)[1]);
        svg.style.removeProperty("display");
      }
    };

    //in addion to showing the Qr Code in the browser, we offer a download function
    function downloadSVG() {
      var svgData = qr.toSvgString(border);
      var svgBlob = new Blob([svgData], {type:"image/svg+xml;charset=utf-8"});
      var svgUrl = URL.createObjectURL(svgBlob);
      var downloadLink = document.createElement("a");
      downloadLink.href = svgUrl;
      downloadLink.download = "QR_Code_"+fullName+".svg";
      document.body.appendChild(downloadLink);
      downloadLink.click();
      document.body.removeChild(downloadLink);
    }



    //Beside filling the form with data we give the user the possiblity to use a csv file as input
    //CSV parsing
    var firstRun = true;
    var start, end, firstError;

    //defintion of the function which gets called when the file is parsed sucessfully
    function completeFn(results)
        {
          end = Date.now();

          if (results && results.errors)
          {
            if (results.errors)
            {
              errorCount = results.errors.length;
              firstError = results.errors[0];
            }
            if (results.data && results.data.length > 0)
              rowCount = results.data.length;
          }

          printStats("Parse complete");
          console.log("    Results:", results);

          ////////////////
          //creating the vCard conform text based on the provied data
          for (var x=0; x < results.data.length; x++) {
            var vCardfromCSV = "BEGIN:VCARD\r\nVERSION:3.0\r\nN:"+results.data[x].Lastname+";"+results.data[x].Firstname+";;"+results.data[x].Title+";";
            fullName = results.data[x].Title+" "+results.data[x].Firstname+" "+results.data[x].Lastname;
            vCardfromCSV += "\r\nFN:;;"+fullName;
            if (results.data[x].Street != "" && results.data[x].Street != undefined) {
              var address = results.data[x].Street+";"+results.data[x].City+";;"+results.data[x].Zip;
              vCardfromCSV += "\r\nADR;type=WORK:"+address;
            }
            if (results.data[x].Jobtitle) {
              vCardfromCSV += "\r\nTITLE:"+results.data[x].Jobtitle;
            }
            if (results.data[x].Company) {
              vCardfromCSV += "\r\nORG:"+results.data[x].Company;
            }
            if (results.data[x].Website) {
              vCardfromCSV += "\r\nURL:"+results.data[x].Website;
            }
            if (results.data[x].Landline) {
              vCardfromCSV += "\r\nTEL;type=WORK:"+results.data[x].Landline;
            }
            if (results.data[x].Mobile) {
              vCardfromCSV += "\r\nTEL;type=CELL:"+results.data[x].Mobile;
            }
            if (results.data[x].Email ) {
              vCardfromCSV += "\r\nEMAIL;type=WORK:"+results.data[x].Email;
            }
            if (results.data[x].Twitter ) {
              vCardfromCSV += "\r\nX-SOCIALPROFILE;type=twitter:"+results.data[x].Twitter;
            }
            if (results.data[x].LinkedIn ) {
              vCardfromCSV += "\r\nX-SOCIALPROFILE;type=linkedin:"+results.data[x].LinkedIn;
            }
            vCardfromCSV += "\r\nEND:VCARD";
            console.log("vCardfromCSV:      "+vCardfromCSV);
            redrawQrCode(vCardfromCSV);
            downloadSVG();
          };
          ///////////////
        }


    function errorFn(err, file)
        {
          end = Date.now();
          console.log("ERROR:", err, file);
        }

    //the parser can be configured
    //this function builds the config object based in the setting in the experts section on the frontend
    function buildConfig()
        {
          return {
            header: $('#header').prop('checked'),
            dynamicTyping: $('#dynamicTyping').prop('checked'),
            skipEmptyLines: $('#skipEmptyLines').prop('checked'),
            step: $('#stream').prop('checked') ? stepFn : undefined,
            worker: $('#worker').prop('checked'),
            complete: completeFn,
            error: errorFn,
          };
        }

    function printStats(msg)
        {
          if (msg)
            console.log(msg);
            console.log("       Time:", (end-start || "(Unknown; your browser does not support the Performance API)"), "ms");
            console.log("  Row count:", rowCount);
          if (stepped)
            console.log("    Stepped:", stepped);
            console.log("     Errors:", errorCount);
          if (errorCount)
            console.log("First error:", firstError);
        }

    //The actuall csv parsing
    //Convert CSV to JSON
    $('#parseCreateQR').click(function(){
        if ($(this).prop('disabled') == "true")
          return;

        stepped = 0;
        rowCount = 0;
        errorCount = 0;
        firstError = undefined;

        var config = buildConfig();

        // Allow only one parse at a time
        $(this).prop('disabled', true);

        if (!firstRun)
          console.log("--------------------------------------------------");
        else
          firstRun = false;

        //USING JQUERY TO SELECT FILES
        $('#files').parse({
          // base config to use for each file
          config: config,
          before: function(file, inputElem)
          {
            // executed before parsing each file begins;
            // what you return here controls the flow
            start = Date.now();
            console.log("Parsing file...", file);
          },
          error: function(err, file)
          {
            // executed if an error occurs while loading the file,
            // or if before callback aborted for some reason
            console.log("ERROR:", err, file);
            firstError = firstError || err;
            errorCount++;
          },
          complete: function()
          {
            // executed after all files are complete
            end = Date.now();
            printStats("Done with all files");
            // Reactivate button
             $('#parseCreateQR').prop('disabled', false);
          }
        });
    });


    $("#createQR").on("click", function(){
    	console.log("test");
      redrawQrCode();
      
      document.getElementById("qrCode").classList.remove("hidden");
    }); 

    $("#navMultiQr").on("click", function(){
      document.getElementById("qrCode").classList.add("hidden");
      document.getElementById("vCard-output").value = "";
    }); 

