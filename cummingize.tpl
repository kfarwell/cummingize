%{
if(! ~ $"post_arg_cummingize_input '' &&
   ! ~ $"post_arg_cummingize_cummingness '') {
    eein=$post_arg_cummingize_input
    eeout=`{cummingness=$post_arg_cummingize_cummingness echo $post_arg_cummingize_input |
            tr $NEW_LINE '|' | ./apps/cummingize/cummingize.rc >[2]/dev/null}
}
if not
    eeout='cummingese comes out here'
%}

<form action="" method="post">
    <textarea name="cummingize_input" placeholder="English goes here">%($"eein%)</textarea>
    <div>
        <label>cummingness:</label> <input name="cummingize_cummingness" type="range" min="0.25" max="10" step="0.25" value="1" />
        <input type="submit" value="cummingize" />
    </div>
</form>

<textarea readonly="readonly">
% echo $"eeout | tr ';' ' ' | tr '|' $NEW_LINE
</textarea>

<a href="http://kfarwell.org/projects/cummingize/">source code</a>
