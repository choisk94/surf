<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 관리</title>
</head>
<style>
	.innerOuter{width:80%; margin:auto;}
	.table tbody :hover{background:lightgray; cursor:pointer;}
  	#search_btn{background:deepskyblue;}
  	#search_btn:hover{background:rgb(52, 152, 219);}
  	.faq1{cursor:pointer;}
  	.faq2{display:none;}
  	.left, .right{width:50%; float:left;}
</style>
<body>
	<jsp:include page="../admin/sidebar.jsp"/>
		 <!--여기서부터 우측 게시판-->
      <br>
      <div class="innerOuter" style="width:950px">
        <br><br><br>
        <div>
          <h5>고객센터 관리 > FAQ (자주 묻는 질문)</h5>
          <br>
          <div class="left" align="left">
            <select name="refType" style="width: 120px;">
              <option value="">회원문의</option>
              <option value="">주문결제</option>
              <option value="">취소/환불</option>
              <option value="">서비스 이용</option>
              <option value="">기타</option>
              <option selected>카테고리</option>
            </select>
            <input type="text" placeholder="키워드를 입력하세요">
            <button type="button" class="btn btn-default" id="search_btn">검색</button>
          </div>

          <div class="right" align="right">
            <button type="button" class="btn btn-secondary" href="">글쓰기</button>
          </div>

        </div>
        <br>
        <hr>
        <table class="table">
          <thead>
            <tr style="background-color: rgb(224, 224, 224)">
              <td width="90">번호</td>
              <td width="110">카테고리</td>
              <td width="500" >제목</td>
            </tr>
          </thead>
          <tbody>
            <tr class="faq1">
              <td>29</td>
              <td>취소/환불</td>
              <td align="left">
                <div>결제를 취소했는데 아직 카드취소가 되지 않았어요. 어떻게 된 건가요?</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                  카드환불의 경우 카드사 사정에 따라 환불 접수일로 부터 영업일 기준 3~7일 정도 소요될 수 있습니다. 
                  (취소완료시 카드사에서 안내드리는 SMS는 고객님의 수신 설정여부에 따라 미수신 될 수 있습니다.)
                  자세한 사항은 카드사에 문의 부탁드리며, 7일 이후에도 환불이 되지 않은 경우 1:1문의로 문의 부탁드립니다.
                </p>
              </td>
            </tr>
            <tr class="faq1">
              <td>28</td>
              <td>회원문의</td>
              <td align="left">
                <div>아이디와 비밀번호가 생각나지 않아요. 어떻게 찾을 수 있나요?</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                  아이디/비밀번호찾기에서 회원가입시 등록하신 이메일 주소를 입력하시면
                  메일로 아이디/비밀번호가 발송됩니다. 가입시 기재한 주소가 기억나지 않으시거나
                  오류가 발생하는 경우, 고객센터(02-3845-3291) 또는 챗봇으로 문의 주시면 신속하게 도움 드리겠습니다.
                </p>
              </td>
            </tr>
            <tr class="faq1">
              <td>27</td>
              <td>주문결제</td>
              <td align="left">
                <div>상품주문은 어떻게 하나요?</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                 구매를 원하시는 상품을 선택 후 카드 또는 무통장 입금 결제를 해주시면 됩니다.
                </p>
              </td>
            </tr>
            <tr class="faq1">
              <td>26</td>
              <td>기타</td>
              <td align="left">
                <div>인재 채용은 어디에 문의하나요?</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                support@naver.com 또는 고객센터(02-3845-3291)에 연락주시면 감사하겠습니다.
                </p>  
              </td>
            </tr>
            <tr class="faq1">
              <td>25</td>
              <td>서비스 이용</td>
              <td align="left">
                <div>찜해놓은 작품들은 언제까지 보관이 되나요?</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                 <p>찜한 작품들은 00일간 보관이 가능합니다.</p>
              </td>
            </tr>
            <tr class="faq1">
              <td>24</td>
              <td>취소/환불</td>
              <td align="left">
                <div>취소/환불은 어떻게 하나요?</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                 주문내역 상세페이지에서 직접 취소가 가능합니다. 
                 단 부분취소 및 환불은 불가능합니다. 전체 취소 후 재구매 해주세요.
                </p>
              </td>
            </tr>
            <tr class="faq1">
              <td>23</td>
              <td>주문결제</td>
              <td align="left">
                <div>전화로도 주문할 수 있나요?</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                 현재 서퍼는 전화주문이 불가합니다.
                 모은 주문은 온라인으로 가능하오니 접속하셔서 원하시는 상품을 주문해주세요!
                </p>
              </td>
            </tr>
            <tr class="faq1">
              <td>22</td>
              <td>기타</td>
              <td align="left">
                <div>이런 카테고리가 있었으면 좋겠어요!</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                 고객님의 소중한 의견 잘 받았습니다. 
                 다양한 카테고리를 준비중에 있으므로 조금만 기다려주세요!
                </p>
              </td>
            </tr>
            <tr class="faq1">
              <td>21</td>
              <td>서비스 이용</td>
              <td align="left">
                <div>팝업이 안 보여요.</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                 팝업차단을 해제하시면 보일 수 있습니다. 팝업차단유무를 확인해주세요.
                 확인방법 (익스플로러>팝업차단>팝업차단유무확인)
                 팝업창이 나오지 않을 경우 주소입력(URL)단 밑에 노란 표시줄을 더블클릭.
                 안내창 더블클릭>현재사이트의 팝업을 항상 허용
                </p>
              </td>
            </tr>
            <tr class="faq1">
              <td>20</td>
              <td>회원문의</td>
              <td align="left">
                <div>회원 탈퇴를 하고 싶어요.</div>
              </td>
            </tr>
            <tr class="faq2">
              <td colspan="2">A. </td>
              <td align="left">
                <p>
                혹여 서퍼 이용시 불편하셨던 점이 있으시다면 1:1문의접수 부탁드립니다.
                담당자 신속하게 확인하여 안내 및 조치 드리겠습니다.
                회원탈퇴는 마이페이지 정보수정에서 [회원탈퇴] 버튼을 통해 가능합니다.
                </p>
              </td>
            </tr>
          </tbody>
        </table>

        <script>
          $(function(){
              $(".faq1").click(function(){

                  var $faq2 = $(this).next();

                  if($faq2.css("display") == "none"){ 

                    $(this).siblings(".faq2").slideUp();

                    $faq2.slideDown(); // 보여지게끔
                  }else{ 
                    $faq2.slideUp(); // 사라지게끔
                  }

              });
          })
        </script>
        <br>

        <!--여기서부터 페이지이동-->
        <ul class="pagination justify-content-center">
          <li class="page-item"><a class="page-link" href="#">이전</a></li>
          <li class="page-item"><a class="page-link" href="#">1</a></li>
          <li class="page-item"><a class="page-link" href="#">2</a></li>
          <li class="page-item"><a class="page-link" href="#">3</a></li>
          <li class="page-item"><a class="page-link" href="#">4</a></li>
          <li class="page-item"><a class="page-link" href="#">5</a></li>
          <li class="page-item"><a class="page-link" href="#">다음</a></li>
        </ul>
      </div>
      

</body>
</html>