
# This is Scheme-Calc
- an intelligent and helpful calculator language
- takes (immense) inspiration from lisp and more specifically scheme
- I am making this to teach my self scheme and experiment with some compiler techniques

## Language
_expn_  -> (_op_ [_const_... | (_expn_)])
        -> (_bind_)
_bind_  -> (define _name_ _const_)
        -> (define _name_ (_expn_))
_name_  -> [a-z | A-Z]+[a-z | A-Z | 0-9]\*[']?
_op_    -> [+ | / | - | * | %]
_const_ -> [0-9].?[0-9]\*

### Reason for creation
I am a student of language design, So I am trying to teach myself how to not only design
language but how to create compilers and interpreters for those languages. With this in mind
I have created this very simple calculator language to help me implement techniques in a rather
simple environment. This project is for learning the follow topics:
- Types
- Intermediate relationship
- Parsing (Though I have other projects that do this much better)
- Scheme
