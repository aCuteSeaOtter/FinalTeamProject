$(function() {
	initializeSelectedItems();
	
	
})

function initializeSelectedItems() {
    const urlParams = new URLSearchParams(window.location.search);
    const selectedItemsParam = urlParams.get('selectedItems');
    if (selectedItemsParam) {
        const selectedItems = JSON.parse(decodeURIComponent(selectedItemsParam));
        selectedItems.forEach(item => {
            const selectBox = $(`.divBlock:has(.attrId[value="${item.attr_id}"]) .selectBox`);
            if (selectBox.length) {
                selectBox.attr('src', '/images/plan/place_select.svg');
                const divBlock = selectBox.closest('.divBlock');
                const selectedLocalTitleText = item.attr_name;
                const selectedThumbnailSrc = divBlock.find(".thumbnail").attr("src");
                const selectedDescriptionText = item.attr_local;
                const newItem = App.createSelectedItem(item.attr_id, selectedThumbnailSrc, selectedLocalTitleText, selectedDescriptionText);
                $(".selectedScrollBox").append(newItem);
                App.selectedAttrIdData.push(item.attr_id);
            }
        });
        // 선택된 항목 수 업데이트
        App.updateCnt(selectedItems.length);
    }
}