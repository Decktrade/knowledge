- [Markdown �L�@�ꗗ](#markdown-�L�@�ꗗ)
  - [�O�� CSS](#�O��-css)
    - [�ӏ�����](#�ӏ�����)
    - [�r��](#�r��)
    - [�C�����ꂱ��](#�C�����ꂱ��)
    - [�����N](#�����N)
    - [�\�[�X�R�[�h �@](#�\�[�X�R�[�h-)
    - [�\�[�X�R�[�h �A ������w��](#�\�[�X�R�[�h--������w��)
    - [�\�[�X�R�[�h �B �C���f���g](#�\�[�X�R�[�h--�C���f���g)
    - [�\](#�\)
    - [�摜](#�摜)
    - [�O���t�@�C���̃C���|�[�g](#�O���t�@�C���̃C���|�[�g)

# Markdown �L�@�ꗗ

## �O�� CSS

@import ".\external\test.md\test.css"

### �ӏ�����

2. �� 3. ��
3. ��
4. ��

   class Hoge
   def hoge
   print 'hoge'
   end
   end

### �r��

---

### �C�����ꂱ��

�C���X�g�[���R�}���h�� `gem install hoge` �ł�

normal _italic_ normal
normal _italic_ normal

normal **bold** normal
normal **bold** normal

normal **_bold_** normal
normal **_bold_** normal

~~��������~~

### �����N

[Google �搶](https://www.google.co.jp/)

[google]: https://www.google.co.jp/

[���������� google][google]
���̑��̕���
[����������� google][google]

https://www.google.co.jp/

### �\�[�X�R�[�h �@

```
�@class Hoge
�@  def hoge
�@    print 'hoge'
�@  end
�@end
```

### �\�[�X�R�[�h �A ������w��

```ruby {cmd}
class Hoge
  def hoge
    print 'hoge'
  end
end
```

### �\�[�X�R�[�h �B �C���f���g

    class Hoge
      def hoge
        print 'hoge'
      end
    end

### �\

| header1    |     header2 |   header3    |
| :--------- | ----------: | :----------: |
| align left | align right | align center |
| a          |           b |      c       |

### �摜

![�G�r�t���C�g���C�A���O��](http://i.imgur.com/Jjwsc.jpg "�T���v��")

�����[�J���t�@�C���͂��߂��ۂ�
�� �O���t�@�C���̃C���|�[�g ���g�p
![�G�r�t���C�g���C�A���O��](.\external\test.md\ebihurai.png "�T���v��")

### �O���t�@�C���̃C���|�[�g

�摜�t�@�C��
@import ".\external\test.md\ebihurai.png"

---

csv �t�@�C��
@import ".\external\test.md\test.csv"

---

html �t�@�C��
@import ".\external\test.md\test.html"

---

json�t�@�C��
@import ".\external\test.md\test.json"

---

md �t�@�C��
@import ".\external\test.md\test.md"

---

�\�[�X�R�[�h(js)
���v���r���[����Ȃ�
@import ".\external\test.md\test.js"

---

�\�[�X�R�[�h(Python)
���v���r���[�����
@import ".\external\test.md\test.py" {cmd}
