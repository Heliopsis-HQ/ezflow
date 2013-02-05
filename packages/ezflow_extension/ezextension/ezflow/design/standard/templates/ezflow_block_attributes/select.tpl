{def
    $selections = cond( $attribute_type|eq( 'custom_attribute' ), 
                        ezini( $block.type, concat( 'CustomAttributeSelection_', $attribute ), 'block.ini' ),
                        ezini( $block.type, concat( 'FetchParametersSelection_', $attribute ), 'block.ini' ) )
}

{if is_set( $label )}<label>{$label}:</label>{/if}
<select id="{$attribute_id}" class="block-control {$attribute_datatype}" name="{$attribute_name}">
    {foreach $selections as $selection_value => $selection_name}
        <option value="{$selection_value|wash()}"{if eq( $attribute_value, $selection_value )} selected="selected"{/if} />{$selection_name|wash()}</option>
    {/foreach}
</select>