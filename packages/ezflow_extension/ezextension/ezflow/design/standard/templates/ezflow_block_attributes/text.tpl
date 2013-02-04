{def
    $attribute_value = cond( $attribute_type|eq( 'custom_attribute' ),
                             $block.custom_attributes[$attribute],
                             $fetch_params[$attribute] )
}

{if is_set( $label )}<label>{$label}:</label>{/if}
<textarea id="{$attribute_id}" class="textbox block-control" name="{$attribute_name}" rows="7">{$attribute_value|wash()}</textarea>