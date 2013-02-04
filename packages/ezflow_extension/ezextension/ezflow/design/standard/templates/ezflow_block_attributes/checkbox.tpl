{def
    $attribute_value = cond( $attribute_type|eq( 'custom_attribute' ),
                             $block.custom_attributes[$attribute],
                             $fetch_params[$attribute] )
}

{if is_set( $label )}<label>{$label}:</label>{/if}
<input id="{$attribute_id}-a" class="block-control" type="hidden" name="{$attribute_name}" value="0" />
<input id="{$attribute_id}-b" class="block-control" type="checkbox" name="{$attribute_name}"{if eq( $attribute_value, '1')} checked="checked"{/if} value="1" />