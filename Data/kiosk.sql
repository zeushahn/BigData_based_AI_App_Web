use kiosk;

# ------------------------------------------------------------------------ #
# Case 3) 사용자가 키오스크에 접근하여 본인의 id와 password를 입력하고 신발을 구매하려 합니다.
# ------------------------------------------------------------------------ #
## 사용자 id : jojo, password : 8989
select count(*) from user where id = 'jojo' and password = '8989';

## 사용자 id : yubee, password : 1234
select count(*) from user where id = 'yubee' and password = '1234';

## yubee가 nike 제품을 검색하고 구매하려고 합니다.
select * from product where id like '%nike%';

## yubee가 현재일자에 나이키 에어 / size 265 / white를 5개 구매했습니다.

### 구매 정보 입력
insert into purchase (product_seq, user_id, quantity, purchaseprice, purchasedate)
values (1, 'yubee', 5, 100000 * 5, now());
### 구매 정보 확인
select * from purchase;
 
### 제품정보 재고 수정
update product set stock = stock - 10 where seq = 1;

#######################################################################
## yubee가 proSpecs 제품을 검색하고 구매하려고 합니다.
select * from product where id like '%proSpecs%';

## yubee가 현재일자에 프로 액티브 / size 255 / red를 2개 구매했습니다.

### 구매 정보 입력
insert into purchase (product_seq, user_id, quantity, purchaseprice, purchasedate)
values (6, 'yubee', 2, 130000 * 2, now());
### 구매 정보 확인
select * from purchase;
 
### 제품정보 재고 수정
update product set stock = stock - 2 where seq = 6;

#######################################################################
## yubee가 newBalance 제품을 검색하고 구매하려고 합니다.
select * from product where id like '%newBalance%';

## yubee가 현재일자에 발렌스 블랙 / size 265 / white를 3개 구매했습니다.

### 구매 정보 입력
insert into purchase (product_seq, user_id, quantity, purchaseprice, purchasedate)
values (2, 'yubee', 3, 150000 * 3, now());
### 구매 정보 확인
select * from purchase;
 
### 제품정보 재고 수정
update product set stock = stock - 3 where seq = 2;

###########################################################################
## 사용자 id : jangbee, password : 2345
select count(*) from user where id = 'jangbee' and password = '2345';

## jangbee가 nike 제품을 검색하고 구매하려고 합니다.
select * from product where id like '%nike%';

## jangbee가 현재일자에 나이키 에어 / size 265 / white를 5개 구매했습니다.

### 구매 정보 입력
insert into purchase (product_seq, user_id, quantity, purchaseprice, purchasedate)
values (1, 'jangbee', 5, 100000 * 5, now());
### 구매 정보 확인
select * from purchase;
 
### 제품정보 재고 수정
update product set stock = stock - 5 where seq = 1;

################################################################################
## jangbee가 newBalance 제품을 검색하고 구매하려고 합니다.
select * from product where id like '%newBalance%';

## jangbee가 현재일자에 발랜스 블랙 / size 265 / white를 3개 구매했습니다.

### 구매 정보 입력
insert into purchase (product_seq, user_id, quantity, purchaseprice, purchasedate)
values (2, 'jangbee', 3, 150000 * 3, now());
### 구매 정보 확인
select * from purchase;
 
### 제품정보 재고 수정
update product set stock = stock - 3 where seq = 2;


###########################################################################
## 사용자 id : kwanwoo, password : 3456
select count(*) from user where id = 'kwanwoo' and password = '3456';

## kwanwoo가 newBalance 제품을 검색하고 구매하려고 합니다.
select * from product where id like '%newBalance%';

## kwanwoo가 현재일자에 발렌스 블랙 / size 265 / white를 3개 구매했습니다.

### 구매 정보 입력
insert into purchase (product_seq, user_id, quantity, purchaseprice, purchasedate)
values (2, 'kwanwoo', 3, 150000 * 3, now());
### 구매 정보 확인
select * from purchase;
 
### 제품정보 재고 수정
update product set stock = stock - 3 where seq = 2;

# 유비가 키오스크에 접근하여 자신의 구매 내역을 보고자 합니다.
select * from purchase where user_id = 'yubee';

# 제품명과 사이즈도 같이 보이게 하자!
select product.name, product.size, purchase.quantity, purchase.purchasedate
from purchase , product
where product.seq = purchase.product_seq and
purchase.user_id = 'yubee';

# 관우가 키오스크에 접근하여 자신의 구매 내역을 보고자 합니다.
select product.name, product.size, purchase.quantity, purchase.purchasedate
from purchase , product
where product.seq = purchase.product_seq and
purchase.user_id = 'kwanwoo';

# 장비가 키오스크에 접근하여 자신의 구매 내역을 보고자 합니다.
select product.name, product.size, purchase.quantity, purchase.purchasedate
from purchase , product
where product.seq = purchase.product_seq and
purchase.user_id = 'jangbee';

# 대표이사가 본인의 pc에서 매출 현황을 보고자 합니다.
## 일자별 매출 금액을 보고자 합니다.
select purchasedate as 일자별, sum(purchaseprice) as 매출금액 from purchase group by purchasedate;

## 구매가 가장 많은 고객명과 해당 고객의 구매 금액 합을 보고자 합니다.
select user.name as 고객명, sum(purchase.purchaseprice) as 구매금액합계
from user, purchase 
where user.id = purchase.user_id
group by purchase.user_id
order by sum(purchase.purchaseprice) desc;

## 제품별 최대 매출순으로 보고자 합니다.
select product.name, sum(purchase.purchaseprice)
from product, purchase
where product.seq = purchase.product_seq
group by purchase.product_seq
order by sum(purchase.purchaseprice) desc;




