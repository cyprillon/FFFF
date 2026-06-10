# FFFF
Font Fallback for Framer
https://note.com/bk_chou/n/n2b51eb10e81c
Framerデザイン/プレビュー画面上の日本語英語それぞれ指定の混在Font/SF Pro JP/FontFallback/variable style wght対応
FramerのUI設定ではフォント一つしか選べない
custom codeはDOM下の公開ページしか効かない
それではデザイン時は気持ち悪い
特にSF Pro JPを使う場合は必須ですので（そのフォント自体、中身英語が入ってないから、Framerで普通のやり方だと使えるものにならない）

## 日本語と英語別々混在するフォントをデザイン時にそのまま反映する方法：
Code Componentsを作成して　フレーム下の任意位置に配置
またはlayout templateに配置して、全てのページに適用

例：
日本語
SFProJPDisplay-Regular　//Weight:Regular
SFProJPDisplay-Medium　//Weight:Regular
SFProJPDisplay-Bold　//Weight:Regular
英語
SF Pro Display　//Weight:Regular/Medium/Bold
SF Pro //Variable

SFProJPDisplay系を一つのフォントに統合する
Variable非対応フォントのfont-weightをstyle*='wght"にマッピング
（あとでSF Proとセットで使うため）

## 注意
text styleの場合はランダムの.framer-styles-preset-*****を拾って個別対応
previewに効くためには必ずコンポーネントをフレーム内に置く
一番外側に置くとデザイン画面では効きますが、プレビュー時には拾えないです
※テキスト編集モード時は反映しない
（PreviewのほうはCustom CSSじゃなく Code Componentで効く
Code Componentを全てのページに配置した場合はCustom CSS不要）
