var index = -1;
        var count = 0;

        var arr = new Array();

        $.ajax({
            url: "./resources/csv/Customer.csv",
            dataType: 'text',
        }).done(successFunction);
    
        function successFunction(data) {
            var allRows = data.split(/\r?\n|\r/);

            count = allRows.length -2;

            var table = '<table id="database">';
            for (var singleRow = 0; singleRow < allRows.length -1; singleRow++) {

                arr[singleRow] = new Array();

            if (singleRow === 0) {
                table += '<thead>';
                table += '<tr>';
            } else {
                table += '<tr>';
            }
            var rowCells = allRows[singleRow].split(',');
            for (var rowCell = 0; rowCell < rowCells.length; rowCell++) {
                if (singleRow === 0) {
                table += '<th>';
                table += rowCells[rowCell];

                arr[singleRow][rowCell] = rowCells[rowCell];

                table += '</th>';
                } else {
                table += '<td>';
                table += rowCells[rowCell];

                arr[singleRow][rowCell] = rowCells[rowCell];

                table += '</td>';
                }
            }
            if (singleRow === 0) {
                table += '</tr>';
                table += '</thead>';
                table += '<tbody>';
            } else {
                table += '</tr>';
            }
            } 
            table += '</tbody>';
            table += '</table>';
            $('body').append(table);
            countcust();
        }

        function countcust() {
            $('#maxcust').html('customer : '+ count);
        }

        function search(index) {
            $('#searchindex').html(index);
            $('#searchname').val(arr[index][0]);
            if (arr[index][1] == 'f') 
                $("input:radio[name='gender']:radio[value='01']").prop('checked', true);
            else
                $("input:radio[name='gender']:radio[value='02']").prop('checked', true);
            $('#searchemail').val(arr[index][2]);
            $('#searchbirth').val(arr[index][3]);
        }

        function spec(){
            let tempidx = $('#find').val();
            if (tempidx >= 0 && tempidx <= count ) {
                index = tempidx;
                search(index);
            }
            else alert('올바른 index를 입력해주세요(' + '0 ~ ' + count + ')');
        }

        function prev() {
            if(index > 0) index = index - 1;
            search(index);
        }

        function next() {
            if(index < count) index = index + 1;
            search(index);
        }

        function modify() {
            //미완성
        }

        function del() {
            arr.splice(index,1);
            if(index>0) index--;
            search(index);
            count--;
            countcust();
        }

        function create() {
            let name, gender, email, birth;
            let temparr = new Array();
            name = $('#createname').val();
            gender = $("input[name='inputgender']:checked").val();
            email = $('#createemail').val();
            birth = $('#createbirth').val();

            let errorflag = 0;
            if(name == '') {
                alert("이름을 입력하세요.");
                errorflag = 1;
            }
            if(!gender && errorflag == 0) {
                alert("성별을 입력하세요.");
                errorflag = 1;
            }
            if(email == '' && errorflag == 0) {
                alert("이메일을 입력하세요.");
                errorflag = 1;
            }
            if(birth == '' && errorflag == 0) {
                alert("생년월일을 입력하세요.");
                errorflag = 1;
            }
            if( ( birth < 100000 || birth > 999999 ) && errorflag == 0) {
                alert('6자리 생년월일을 입력하세요. ex) 890101');
                errorflag = 1;
            }

            if (errorflag == 0){

                if(gender== '01') gender = 'f';
                else gender = 'm';

                arr.push([name,gender,email,birth]);
                //index++;
                count++;
                index = count;
                search(index);
                countcust();
            }
        }

        function save() {
            //미완성
        }
        
        