#!/usr/local/bin/python
#encoding=utf-8

import gradio as gr
import zhconv

def convert_zh_string(in_string, target_type='zh-cn'):
    out_string = zhconv.convert(in_string, target_type)
    return out_string

interface = gr.Interface(
    fn = convert_zh_string,
    inputs = ['text','text'],
    outputs = 'text'
)

interface.launch(share=True)