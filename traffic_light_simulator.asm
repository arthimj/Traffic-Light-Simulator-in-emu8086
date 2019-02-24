data segment
    var db 0h
    n1 db 0h
    n2 db 0h
    n3 db 0h
data ends
code segment
    start: 
           assume cs:code,ds:data
           mov ax,@data
           mov ds,ax
           mov al,13h
           mov ah,0h
           int 10h
           
    part1: mov var,85
           mov cx,75
           mov dx,0
           mov al,7
           mov ah,0ch
           
       a1: int 10h
           inc dx
           dec var
           jnz a1 
          
       b1: mov al,7
           mov ah,0ch
           int 10h
           dec cx
           jnz b1 
           mov cx,185
           mov dx,10
    
    part2: mov var,85
           mov cx,75
           mov dx,100
           mov al,7
           mov ah,0ch
           
      a2:  int 10h
           inc dx
           dec var
           jnz a2 
           mov var,85
   decdx:  dec dx
           dec var
           jnz decdx
            
      b2:  mov al,7
           mov ah,0ch
           int 10h
           dec cx
           jnz b2 
   part3:  mov var,85
           mov cx,100
           mov dx,185
           mov al,7
           mov ah,0ch
           
       a3: int 10h
           dec dx
           dec var
           jnz a3 
          
       b3: mov al,7
           mov ah,0ch
           int 10h
           inc  cx
           cmp cx,210
           jnz b3 
           mov cx,145
           mov dx,10
    
    part4: mov var,85
           mov cx,100
           mov dx,0
           mov al,7
           mov ah,0ch
           
      a4:  int 10h
           inc dx
           dec var
           jnz a4 
           
            
      b4:  mov al,7
           mov ah,0ch
           int 10h
           inc cx
           cmp cx,210
           jnz b4     
           
    part5: mov var,85
           mov cx,210
           mov dx,85
           mov al,7
           mov ah,0ch
           
       a5: int 10h
           dec dx
           dec var
           jnz a5
           
    part6: mov var,85
           mov cx,210
           mov dx,100  
           mov al,7
           mov ah,0ch
           
       a6: int 10h
           inc dx
           dec var
           jnz a6 
           
    part7: mov var,85
           mov cx,235
           mov dx,0
           mov al,7
           mov ah,0ch
           
       a7: int 10h
           inc dx
           dec var
           jnz a7
           
       b7: mov ah,0ch
           mov al,7
           int 10h
           inc cx
           cmp cx,320
           jnz b7                                     
                   
    part8: mov var,85
           mov dx,100
           mov cx,235
           mov al,7
           mov ah,0ch 
           
       a8: int 10h
           inc dx
           dec var
           jnz a8
           mov dx,100
       
       b8: mov ah,0ch
           mov al,7
           int 10h
           inc cx
           cmp cx,320
           jnz b8     
           
 traphic1: mov dx,35
           mov cx,70
      l1:  mov al,0fh
           mov ah,0ch
           int 10h
           dec cx
           cmp cx,55
           jnz l1
      l2: mov al,0fh
           mov ah,0ch
           int 10h
           inc dx
           cmp dx,80
           jnz l2
      l3: mov al,0fh
           mov ah,0ch
           int 10h
           inc cx
           cmp cx,70
           jnz l3
      l4: mov al,0fh
           mov ah,0ch
           int 10h
           dec dx
           cmp dx,35
           jnz l4    
 
 traphic2: mov dx,105
           mov cx,70
      l11: mov al,0fh
           mov ah,0ch
           int 10h
           dec cx
           cmp cx,25
           jnz l11
      l22: mov al,0fh
           mov ah,0ch
           int 10h
           inc dx
           cmp dx,120
           jnz l22
      l33: mov al,0fh
           mov ah,0ch
           int 10h
           inc cx
           cmp cx,70
           jnz l33
      l44: mov al,0fh
           mov ah,0ch
           int 10h
           dec dx
           cmp dx,105
           jnz l44  
 traphic3: mov dx,65
           mov cx,150
     l111: mov al,0fh
           mov ah,0ch
           int 10h
           dec cx
           cmp cx,105
           jnz l111
     l222: mov al,0fh
           mov ah,0ch
           int 10h
           inc dx
           cmp dx,80
           jnz l222
     l333: mov al,0fh
           mov ah,0ch
           int 10h
           inc cx
           cmp cx,150
           jnz l333
     l444: mov al,0fh
           mov ah,0ch
           int 10h
           dec dx
           cmp dx,65
           jnz l444
 traphic4: mov dx,105
           mov cx,120
    l1111: mov al,0fh
           mov ah,0ch
           int 10h
           dec cx
           cmp cx,105
           jnz l1111
    l2222: mov al,0fh
           mov ah,0ch
           int 10h
           inc dx
           cmp dx,150
           jnz l2222
    l3333: mov al,0fh
           mov ah,0ch
           int 10h
           inc cx
           cmp cx,120
           jnz l3333
    l4444: mov al,0fh
           mov ah,0ch
           int 10h
           dec dx
           cmp dx,105
           jnz l4444 
           
 traphic5: mov dx,35
           mov cx,205
   l11111: mov al,0fh
           mov ah,0ch
           int 10h
           dec cx
           cmp cx,190
           jnz l11111
   l22222: mov al,0fh
           mov ah,0ch
           int 10h
           inc dx
           cmp dx,80
           jnz l22222
   l33333: mov al,0fh
           mov ah,0ch
           int 10h
           inc cx
           cmp cx,205
           jnz l33333
   l44444: mov al,0fh
           mov ah,0ch
           int 10h
           dec dx
           cmp dx,35
           jnz l44444 
 
 traphic6: mov dx,105
           mov cx,205
  l111111: mov al,0fh
           mov ah,0ch
           int 10h
           dec cx
           cmp cx,160
           jnz l111111
  l222222: mov al,0fh
           mov ah,0ch
           int 10h
           inc dx
           cmp dx,120
           jnz l222222
  l333333: mov al,0fh
           mov ah,0ch
           int 10h
           inc cx
           cmp cx,205
           jnz l333333
  l444444: mov al,0fh
           mov ah,0ch
           int 10h
           dec dx
           cmp dx,105
           jnz l444444                                                                                       

trafficdivssion:
          mov cx,55
          mov dx,50
     d11: mov al,0fh    
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,70
          jnz d11
    
          mov cx,55
          mov dx,65
     d12: mov al,0fh
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,70
          jnz d12
          
          mov cx,45
          mov dx,105
     d21: mov al,0fh    
          mov ah,0ch
          int 10h
          inc dx
          cmp dx,120
          jnz d21
       
          mov cx,60
          mov dx,105
     d22: mov al,0fh    
          mov ah,0ch
          int 10h
          inc dx
          cmp dx,120
          jnz d22
       
          mov cx,120
          mov dx,65
     d31: mov al,0fh    
          mov ah,0ch
          int 10h
          inc dx
          cmp dx,80
          jnz d31
    
          mov cx,135
          mov dx,65
     d32: mov al,0fh    
          mov ah,0ch
          int 10h
          inc dx
          cmp dx,80
          jnz d32
          
          mov cx,105
          mov dx,120
     d41: mov al,0fh    
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,120
          jnz d41
          
          mov cx,105
          mov dx,135
     d42: mov al,0fh    
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,120
          jnz d42
      
          mov cx,190
          mov dx,50
     d51: mov al,0fh    
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,205
          jnz d51
          
          mov cx,190
          mov dx,65
     d52: mov al,0fh    
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,205
          jnz d52     
    
          mov cx,175
          mov dx,105
     d61: mov al,0fh    
          mov ah,0ch
          int 10h
          inc dx
          cmp dx,120
          jnz d61
    
          mov cx,190
          mov dx,105
     d62: mov al,0fh    
          mov ah,0ch
          int 10h
          inc dx
          cmp dx,120
          jnz d62 

colors:
 
          mov cx,55
          mov dx,35
     red1:
          mov al,4
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,70
          jnz red1
          inc dx
          mov cx,55
          cmp dx,50
          jnz red1
          mov cx,25
          mov dx,105
     cd2: mov al,2
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,40
          jnz cd2
          inc dx
          mov cx,25
          cmp dx,120
          jnz cd2         
          mov cx,160
          mov dx,105      
     cd6: mov al,2
          mov ah,0ch
          int 10h
          inc cx
          cmp cx,175
          jnz cd6
          inc dx
          mov cx,160
          cmp dx,120
          jnz cd6 
          
          mov dl, 45 ; Cursor position column
          mov dh, 25; Cursor position row                        
          
          mov ah, 09h
          mov al, 32
          mov bl, 70h
          mov cx, 160d
          int 10h          
   main:
    ; Waits for a key press
          mov ah, 00h
          int 16h
          
          
          cmp al, 100
          je Right 
          jmp main
 Right:
          add dl, 1
          call SetCursor
          jmp main
          ret  
        
 SetCursor:
          mov ah, 02h
          mov bh, 00
          int 10h
          inc ch
          ret
          cmp bl,20
          
          mov dl,80
          mov dh,85
          mov ah, 09h
          mov al, 32
          mov bl, 70h
          mov cx, 160d
          int 10h          
   main1:
    ; Waits for a key press
          mov ah, 00h
          int 16h
          cmp al, 115
          je Down
          jmp main1
          
   Down:
          add dh, 1
          call SetCursor
          jmp main
          ret                 
code ends
end start