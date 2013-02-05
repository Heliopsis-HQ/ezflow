{if is_set( $label )}<label>{$label}:</label>{/if}
<textarea id="{$attribute_id}" class="textbox block-control" name="{$attribute_name}" rows="7">{$attribute_value|wash()}</textarea>