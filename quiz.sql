-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2023-10-20 09:33:44
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `quiz`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `question`
--

CREATE TABLE `question` (
  `number` int(11) NOT NULL,
  `questions` varchar(255) NOT NULL,
  `correct answer` varchar(100) NOT NULL,
  `A` varchar(255) NOT NULL,
  `B` varchar(255) NOT NULL,
  `C` varchar(255) NOT NULL,
  `D` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `question`
--

INSERT INTO `question` (`number`, `questions`, `correct answer`, `A`, `B`, `C`, `D`) VALUES
(1, 'ページング方式の仮想記憶において，主記憶に存在しないページをアクセスした場合の処理や状態の順番として，適切なものはどれか。ここで，主記憶には現在，空きのページ枠はないものとする。', 'Ｃ', 'A:置換え対象ページの決定→ページイン→ページフォールト→ページアウト', 'B:置換え対象ページの決定→ページフォールト→ページアウト→ページイン', 'C:ページフォールト→置換え対象ページの決定→ページアウト→ページイン', 'D:ページフォールト→置換え対象ページの決定→ページイン→ページアウト'),
(2, 'ブロックチェーンによって実現されている仮想通貨マイニングの説明はどれか。\r\n', 'A', 'A:仮想通貨取引の確認や記録の計算作業に参加し，報酬として仮想通貨を得る。', 'B:仮想通貨を売買することによってキャピタルゲインを得る。', 'C:個人や組織に対して，仮想通貨による送金を行う。', 'D:実店舗などで仮想通貨を使った支払や決済を行う。'),
(3, '優先度に基づくプリエンプティブなスケジューリングを行うリアルタイムOSで，二つのタスクA，Bをスケジューリングする。Aの方がBより優先度が高い場合にリアルタイムOSが行う動作のうち，適切なものはどれか。\r\n', 'C', 'A:Aの実行中にBに起動がかかると，Aを実行可能状態にしてBを実行する。', 'B:Aの実行中にBに起動がかかると，Aを待ち状態にしてBを実行する。', 'C:Bの実行中にAに起動がかかると，Bを実行可能状態にしてAを実行する。', 'D:Bの実行中にAに起動がかかると，Bを待ち状態にしてAを実行する。'),
(4, 'バランススコアカードの内部ビジネスプロセスの視点における戦略目標と業績評価指標の例はどれか。', 'D', 'A:持続的成長が目標であるので，受注残を指標とする。\r\n', 'B:主要顧客との継続的な関係構築が目標であるので，クレーム件数を指標とする。', 'C:製品開発力の向上が目標であるので，製品開発領域の研修受講時間を指標とする。', 'D:製品の製造の生産性向上が目標であるので，製造期間短縮日数を指標とする。'),
(5, 'H.264/MPEG-4 AVCの説明として，適切なものはどれか。', 'D', 'A:5.1チャンネルサラウンドシステムで使用されている音声圧縮技術', 'B:携帯電話で使用されている音声圧縮技術', 'C:ディジタルカメラで使用されている静止画圧縮技術', 'D:ワンセグ放送で使用されている動画圧縮技術'),
(6, '企業がマーケティング活動に活用するビッグデータの特徴に沿った取扱いとして，適切なものはどれか。', 'B', 'A:ソーシャルメディアで個人が発信する商品のクレーム情報などの，不特定多数によるデータは処理の対象にすべきではない。', 'B:蓄積した静的なデータだけでなく，Webサイトのアクセス履歴などリアルタイム性の高いデータも含めて処理の対象とする。', 'C:データ全体から無作為にデータをサンプリングして，それらを分析することによって全体の傾向を推し量る。', 'D:データの正規化が難しい非構造化データである音声データや画像データは，処理の対象にすべきではない。'),
(7, 'モジュール結合度が最も弱くなるものはどれか。\r\n', 'B', 'A:一つのモジュールで，できるだけ多くの機能を実現する。', 'B:二つのモジュール間で必要なデータ項目だけを引数として渡す。', 'C:他のモジュールとデータ項目を共有するためにグローバルな領域を使用する。', 'D:他のモジュールを呼び出すときに，呼び出したモジュールの論理を制御するための引数を渡す。'),
(8, 'DRAMの特徴はどれか。', 'D', 'A:書込み及び消去を一括又はブロック単位で行う。', 'B:データを保持するためのリフレッシュ操作又はアクセス操作が不要である。', 'C:電源が遮断された状態でも，記憶した情報を保持することができる。', 'D:メモリセル構造が単純なので高集積化することができ，ビット単価を安くできる。'),
(9, '二つのアクティビティが次の関係にあるとき，論理的な依存関係はどれか。\r\n\"システム要件定義プロセス\"が完了すれば，\"システム方式設計プロセス\"が開始できる。', 'B', 'A:FF関係(Finish-to-Finish)\r\n', 'B:FS関係(Finish-to-Start)', 'C:SF関係(Start-to-Finish)', 'D:SS関係(Start-to-Start)'),
(10, 'ソフトウェアやデータに欠陥がある場合に，製造物責任法の対象となるものはどれか。\r\n', 'A', 'A:ROM化したソフトウェアを内蔵した組込み機器\r\n', 'B:アプリケーションソフトウェアパッケージ\r\n', 'C:利用者がPCにインストールしたOS\r\n', 'D:利用者によってネットワークからダウンロードされたデータ');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
