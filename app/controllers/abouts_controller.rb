class AboutsController < ApplicationController
  def index
		@profile_list = [
			['名称', '株式会社安西商会'],
			['所在地', 
				'<p class="about_address_td">
					<p class="about_address_td_office">本   社</p>
					<p>福島県会津若松市河東町郡山字金道8番地</br>
					0242-75-2001 fax 0242-75-2182</p>
				</p>
				<p class="about_address_td">
					<p class="about_address_td_office">郡山営業所</p>
					<p>郡山市喜久田町御一丁目70-1</br>
					024-963-0756 fax 024-959-6858</p>
				</p>'
			],
			['創業', '昭和25年1月'],
			['設備', 'ビニール加工接着機(1基) ビニール加工ミシン(3台) クインライトオープンアーム(1台) ビニールハドメ加工機(3台) 製袋用各種ミシン(10台)'],
			['車輌', '乗用自動車(5台) 貨物自動車(20台) フォークリフト(9台) フォイールローダー(2台) ユンボー(2台) 高所作業車(4台)'],
			['取引銀行', '東邦銀行 会津支店 会津信用金庫 会津商工信用組合 JA会津よつば'],
			['主仕入先', '全農 日本マタイ(株) 生科研(株) 三甲(株) 三菱化学ケミカルアグリドリーム(株) タイヨー(株) 東京インキ(株) ストラパック(株) 渡辺パイプ(株) イワタニアグリグリーン(株) カネコ種苗(株) タキイ種苗(株) 辻野プラスチックス工業(株) タキロン・シーアイ(株) 住化農業資材(株) 住化積水フィルム(株)'],
			['主販売先', '全農福島 全農山形 県内各農協 南東北たばこ耕作組合 昭和電工(株) 田村産業(株) 山形青果センター(株) 東北むらせ(株)'],
			['関連会社', 'マタイ東北株式会社'],
		]
		@histories = [
			['昭和25年', '製縄製造より創業'],
			['昭和43年', '米麦用樹脂袋製造開始'],
			['昭和45年', '福島県経済連指定'],
			['昭和48年', '有限会社設立 代表取締役 安西幸松'],
			['昭和56年', '本社事務所新築'],
			['昭和60年', '郡山営業所開設'],
			['平成2年', '農業用ビニール加工開始'],
			['平成9年', '株式会社 安西商会に変更'],
			['平成11年', '山形県経済連指定'],
			['平成12年', '代表取締役が安西秀一となる'],
			['平成13年', '全農福島 全農山形指定'],
			['平成15年', '郡山営業所を南東北卸センターに移転'],
			['平成23年', '郡山営業所 南東北卸センター内 移転'],
			['平成29年', '本社 新築移転'],
			['平成30年', '建設業許可取得'],
		]
  end
end
