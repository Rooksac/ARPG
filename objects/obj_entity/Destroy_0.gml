//drop fragments and items
if (entityFragmentCount > 0){
	fragmentArray = array_create(entityFragmentCount, entityFragment);
	dropItems(x, y, fragmentArray)
}

if (entityDropList != -1) {
	dropItems(x, y, entityDropList)
}