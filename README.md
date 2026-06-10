# FFFF
Font Fallback for Framer<br>
https://note.com/bk_chou/n/n2b51eb10e81c<br>
Framerデザイン/プレビュー画面上の日本語英語それぞれ指定の混在Font/SF Pro JP/FontFallback/variable style wght対応<br>

#### Code Componet化用のコード
https://github.com/cyprillon/FFFF/edit/main/README.md#:~:text=FontFallback-,%2D,-Code%2DComponents%2Dfor
#### SF Pro JP ダウンロード
https://github.com/cyprillon/FFFF/edit/main/README.md#:~:text=README.md-,SFProJP,-.sh

FramerのUI設定ではフォント一つしか選べない
custom codeはDOM下の公開ページしか効かない
それではデザイン時は気持ち悪い
特にSF Pro JPを使う場合は必須ですので（そのフォント自体、中身英語が入ってないから、Framerで普通のやり方だと使えるものにならない）

## 日本語と英語別々混在するフォントをデザイン時にそのまま反映する方法：
Code Componentsを作成して　フレーム下の任意位置に配置
またはlayout templateに配置して、全てのページに適用

例：<br>
日本語<br>
SFProJPDisplay-Regular　//Weight:Regular<br>
SFProJPDisplay-Medium　//Weight:Regular<br>
SFProJPDisplay-Bold　//Weight:Regular<br>
英語<br>
SF Pro Display　//Weight:Regular/Medium/Bold<br>
SF Pro //Variable<br>

SFProJPDisplay系を一つのフォントに統合する<br>
Variable非対応フォントのfont-weightをstyle*='wght"にマッピング<br>
（あとでSF Proとセットで使うため）

## 注意
text styleの場合はランダムの.framer-styles-preset-*****を拾って個別対応<br>
previewに効くためには必ずコンポーネントをフレーム内に置く<br>
一番外側に置くとデザイン画面では効きますが、プレビュー時には拾えないです<br>
※テキスト編集モード時は反映しない<br>
（PreviewのほうはCustom CSSじゃなく Code Componentで効く
Code Componentを全てのページに配置した場合はCustom CSS不要）
