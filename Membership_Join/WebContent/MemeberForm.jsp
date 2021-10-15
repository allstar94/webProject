<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ �Է���</title>
<script src="js/juminCheck.js" charset="UTF-8" ></script>
<script src="js/change_email.js" ></script>
<script src="js/idCheck.js?v=<%=System.currentTimeMillis() %>" charset="UTF-8" ></script>
<style>
.title {
   margin: 40px 30px 30px 30px;
}

.container {
   width: 900px;
}

.right {
   float: right;
}

.red {
   color: red;
}

.tbody.tbody>tr {
   display: table;
   width: 900px;
}

.tbody.tbody>tr>td:nth-child(1) {
   width: 16%;
   vertical-align: middle;
   display: table-cell;
   text-align: center;
}

.tbody.tbody>tr>td:nth-child(2) {
   width: 100%;
}

#detailAddress::placeholder {
   color: blue;
}
</style>
</head>
<body>
   <form name="memberForm" method="POST" action="Member_control.jsp">

      <input type="hidden" name="action" value="insert" />
      <div align="center">

         <h1 class="title">ȸ������</h1>
         <div class="container">

            <div class="right">
               <span class="red">*</span>�ʼ��Է»���
            </div>

            <table border="2">

               <thead>
                  <tr>
                     <th colspan="2" border="0" bgcolor="orange">ȸ�� �⺻ ����</th>
                  </tr>
               </thead>

               <tbody class="tbody">

                  <tr>
                     <td>���̵�<span class="red">*</span></td>
                     <td><input type="text" name="mem_id"
                        placeholder="6�� �̻��� �����ڿ� ����" required autofocus /> <input
                        type="button" value="ID�ߺ�Ȯ��" onclick="idCheck(mem_id.value)" />
                     </td>
                  </tr>

                  <tr>
                     <td>��й�ȣ<span class="red">*</span></td>
                     <td><input type="password" name="mem_passwd" maxlength="12"
                        minlength="8" required /> <span>8~12�ڸ��� ���� �빮�ڿ� ����,
                           Ư�����ڸ� �Է�</span></td>
                  </tr>

                  <tr>
                     <td>�̸�<span class="red">*</span></td>
                     <td><input type="text" name="mem_name" required /></td>
                  </tr>

                  <tr>
                     <td>�г���<span class="red">*</span></td>
                     <td><input type="text" name="mem_nickname" maxlength="12"
                        minlength="2" /> <span>2~8�ڸ��� �ѱ۷θ� �Է�</span></td>
                  </tr>

                  <tr>
                     <td>�̸���<span class="red">*</span></td>
                     <td><input type="text" name="mem_email_id" id="email_id" />@
                        <input type="text" name="mem_email_domain" id="email_add" />
                        <select name="email_sel" id="email_sel"
                        style="font-size: 16px; height: 30px;"
                        onchange="change_email();">
                           <option value="">�����Է�</option>
                           <option value="naver.com">naver.com</option>
                           <option value="hanmail.net">hanmail.net</option>
                           <option value="gmail.com">gmail.com</option>
                           <option value="nate.com">nate.com</option>
                           <option value="kakao.com">kakao.com</option>
                           <option value="korea.com">korea.com</option>
                           <option value="dreamwize.com">dreamwize.com</option>
                     </select></td>
                  </tr>
                  <tr>
                     <td>�ֹι�ȣ<span class="red">*</span></td>
                     <td><input type="text" name="mem_num1" maxlength="6"
                        onkeyup="if(this.value.length == 6)MemberForm.mem_num2.focus();" />
                        <input type="text" name="mem_num2" maxlength="7" /> <input
                        type="button" value="�ֹι�ȣ ���� ���� üũ" onclick="juminCheck(mem_num1.value, mem_num2.value)" /></td>
                  </tr>
                  <tr>
                     <td>�ڵ�����ȣ<span class="red">*</span></td>
                     <td><input type="tel" name="mem_phone"
                        pattern="(010)-[0-9]{4}-[0-9]{4})" required /> ex)010-1234-5678
                     </td>

                  </tr>
                  <tr>
                     <td>����</td>
                     <td><input type="radio" name="mem_gender" value="��" checked />��&nbsp;&nbsp;&nbsp;
                        <input type="radio" name="mem_gender" value="��" />��</td>
                  </tr>
                  <tr>
                     <td>�������<span class="red">*</span></td>
                     <td><script>
                        var today = new Date();
                        var toyear = parseInt(today.getFullYear()); //2021�� ����
                        var start = toyear - 15;
                        var end = toyear - 80;

                        document.write("<select name=mem_Birthday1>");
                        for (i = start; i >= end; i--) {
                           document.write("<option value='" + i +"'>"
                                 + i);
                        }
                        document.write("</select>�� ");

                        document.write("<select name=mem_Birthday2>");
                        for (i = 1; i <= 12; i++) {
                           document.write("<option value='" + i +"'>"
                                 + i);
                        }
                        document.write("</select>�� ");

                        document.write("<select name=mem_Birthday3>");
                        for (i = 1; i <= 31; i++) {
                           document.write("<option value='" + i +"'>"
                                 + i);
                        }
                        document.write("</select>�� ");
                     </script></td>
                  </tr>
                  <tr>
                  	<td>����<span class="red">*</span></td>
                  	<td>
                  		<select name="mem_jab">
                  			<option value="">��������</option>
                  			<option value="ȸ���">ȸ���</option>
                  			<option value="���α׷���">���α׷���</option>
                  			<option value="������">������</option>
                  			<option value="��Ÿ">��Ÿ</option>
                  		</select>
                  	</td>
                  </tr>
                  <tr>
                     <td>�ּ�<span class="red">*</span></td>
                     <td>
                        <div class="inputArea">
                           <p>
                              <input type="text" name="zipCode" id="postcode"
                                 placeholder="�����ȣ" /> <input type="button"
                                 onclick="execDaumPostcode()" value="�����ȣ ã��" />
                           </p>
                           <p>
                              <input type="text" name="userAddr1" id="address" size="100"
                                 placeholder="�ּ�" /> <input type="text" name="userAddr3"
                                 id="extraAddress" size="48" placehilder="�����׸�" (���θ��� ���:
                                 �����̸��� ����Ʈ�̸�)"/> <input type="text" name="userAddr2"
                                 id="detailaddress" size="45" placeholder="���ּ�" (����Ʈ ��ȣ�� �Ǵ�
                                 �����̸� �Է��ϼ���!)"/>
                           </p>
                           <div id="layer"
                              style="display: none; position: fixed; overflow: hidden; z-index: 1; -webkit-overflow-scrolling: touch;">
                              <img src="//t1.daumcdn.net/postcode/resource/images/close.png"
                                 id="btnCloseLayer"
                                 style="cursor: pointer; position: absolute; right: -3px; top: -3px; z-index: 1"
                                 onclick="closeDaumPostcode()" alt="�ݱ� ��ư">
                           </div>

                           <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
                           <script>
                              // �����ȣ ã�� ȭ���� ���� element
                              var element_layer = document
                                    .getElementById('layer');

                              function closeDaumPostcode() {
                                 // iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
                                 element_layer.style.display = 'none';
                              }

                              function execDaumPostcode() {
                                 new daum.Postcode(
                                       {
                                          oncomplete : function(
                                                data) {
                                             // �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.

                                             // �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                                             // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                                             var addr = ''; // �ּ� ����
                                             var extraAddr = ''; // �����׸� ����

                                             //����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
                                             if (data.userSelectedType === 'R') { // ����ڰ� ���θ� �ּҸ� �������� ���
                                                addr = data.roadAddress;
                                             } else { // ����ڰ� ���� �ּҸ� �������� ���(J)
                                                addr = data.jibunAddress;
                                             }

                                             // ����ڰ� ������ �ּҰ� ���θ� Ÿ���϶� �����׸��� �����Ѵ�.
                                             if (data.userSelectedType === 'R') {
                                                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                                                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                                                if (data.bname !== ''
                                                      && /[��|��|��]$/g
                                                            .test(data.bname)) {
                                                   extraAddr += data.bname;
                                                }
                                                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                                                if (data.buildingName !== ''
                                                      && data.apartment === 'Y') {
                                                   extraAddr += (extraAddr !== '' ? ', '
                                                         + data.buildingName
                                                         : data.buildingName);
                                                }
                                                // ǥ���� �����׸��� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                                                if (extraAddr !== '') {
                                                   extraAddr = ' ('
                                                         + extraAddr
                                                         + ')';
                                                }
                                                // ���յ� �����׸��� �ش� �ʵ忡 �ִ´�.
                                                document
                                                      .getElementById("extraAddress").value = extraAddr;

                                             } else {
                                                document
                                                      .getElementById("extraAddress").value = '';
                                             }

                                             // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                                             document
                                                   .getElementById('postcode').value = data.zonecode;
                                             document
                                                   .getElementById("address").value = addr;
                                             // Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
                                             document
                                                   .getElementById(
                                                         "detailAddress").focus();

                                             // iframe�� ���� element�� �Ⱥ��̰� �Ѵ�.
                                             // (autoClose:false ����� �̿��Ѵٸ�, �Ʒ� �ڵ带 �����ؾ� ȭ�鿡�� ������� �ʴ´�.)
                                             element_layer.style.display = 'none';
                                          },
                                          width : '100%',
                                          height : '100%',
                                          maxSuggestItems : 5
                                       }).embed(element_layer);

                                 // iframe�� ���� element�� ���̰� �Ѵ�.
                                 element_layer.style.display = 'block';

                                 // iframe�� ���� element�� ��ġ�� ȭ���� ����� �̵���Ų��.
                                 initLayerPosition();
                              }

                              // �������� ũ�� ���濡 ���� ���̾ ����� �̵���Ű���� �ϽǶ�����
                              // resize�̺�Ʈ��, orientationchange�̺�Ʈ�� �̿��Ͽ� ���� ����ɶ����� �Ʒ� �Լ��� ���� ���� �ֽðų�,
                              // ���� element_layer�� top,left���� ������ �ֽø� �˴ϴ�.
                              function initLayerPosition() {
                                 var width = 300; //�����ȣ���񽺰� �� element�� width
                                 var height = 400; //�����ȣ���񽺰� �� element�� height
                                 var borderWidth = 5; //���ÿ��� ����ϴ� border�� �β�

                                 // ������ ������ ������ ���� element�� �ִ´�.
                                 element_layer.style.width = width
                                       + 'px';
                                 element_layer.style.height = height
                                       + 'px';
                                 element_layer.style.border = borderWidth
                                       + 'px solid';
                                 // ����Ǵ� ������ ȭ�� �ʺ�� ���� ���� �����ͼ� �߾ӿ� �� �� �ֵ��� ��ġ�� ����Ѵ�.
                                 element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width) / 2 - borderWidth)
                                       + 'px';
                                 element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height) / 2 - borderWidth)
                                       + 'px';
                              }
                           </script>
                        </div>
                     </td>
                  </tr>
                  <tr>
                     <td colspan="2"><input type="submit" value="ȸ������ ���" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="�ٽþ���" />
                  </tr>
               </tbody>
            </table>
         </div>
      </div>
   </form>
</body>
</html>